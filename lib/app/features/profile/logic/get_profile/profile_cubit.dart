import 'dart:async';

import 'package:B2B/app/features/profile/logic/get_profile/profile_state.dart';
import 'package:bloc/bloc.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/profile/data/repos/profile_repo.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;

  bool _isLoading = false;
  bool _isRefreshing = false;

  Timer? _periodicTimer;

  ProfileCubit(
    this._profileRepo,
  ) : super(const ProfileState.initial()) {
    load();
  }

  Future<void> load() async {
    if (_isLoading) return;

    _isLoading = true;

    final cached = await _profileRepo.getCachedProfile();

    /// CACHE FIRST
    if (cached != null) {
      emit(ProfileState.success(cached));

      _isLoading = false;
      return;
    }

    emit(const ProfileState.loading());

    final response = await _profileRepo.getProfile(
      forceRefresh: true,
    );

    response.when(
      success: (data) {
        if (isClosed) return;

        emit(ProfileState.success(data));
      },
      failure: (error) {
        if (isClosed) return;

        // 🔥 fallback للكاش عند الفشل
        _profileRepo.getCachedProfile().then((cachedOnFailure) {
          if (isClosed) return;

          if (cachedOnFailure != null) {
            emit(ProfileState.success(cachedOnFailure));
            return;
          }

          emit(ProfileState.failure(
            error: error.apiErrorModel.message ?? '',
          ));
        });
      },
    );

    _isLoading = false;
  }

  Future<void> refresh() async {
    if (_isRefreshing) return;

    _isRefreshing = true;

    final cached = await _profileRepo.getCachedProfile();

    if (cached != null) {
      final isSame = state.maybeWhen(
        success: (oldData) => oldData == cached,
        orElse: () => false,
      );

      if (!isSame) {
        emit(ProfileState.success(cached));
      }
    }

    final response = await _profileRepo.getProfile(
      forceRefresh: true,
    );

    response.when(
      success: (data) {
        if (isClosed) return;

        final isSame = state.maybeWhen(
          success: (oldData) => oldData == data,
          orElse: () => false,
        );

        if (!isSame) {
          emit(ProfileState.success(data));
        }
      },
      failure: (error) {
        if (cached == null && !isClosed) {
          emit(
            ProfileState.failure(
              error: error.apiErrorModel.message ?? 'Something went wrong',
            ),
          );
        }
      },
    );

    _isRefreshing = false;
  }

  @override
  Future<void> close() {
    _periodicTimer?.cancel();
    return super.close();
  }
}
