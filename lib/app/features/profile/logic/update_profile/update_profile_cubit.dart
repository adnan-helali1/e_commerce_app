import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/profile/data/models/update_profile_request.dart';
import 'package:B2B/app/features/profile/data/repos/update_profile_repo.dart';
import 'package:B2B/app/features/profile/logic/update_profile/update_profile_state.dart';
import 'package:bloc/bloc.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  final UpdateProfileRepo _repo;

  UpdateProfileCubit(
    this._repo,
  ) : super(const UpdateProfileState.initial());

  Future<void> updateProfile({
    required UpdateProfileRequest items,
  }) async {
    emit(const UpdateProfileState.loading());

    final response = await _repo.updateProfile(
      UpdateProfileRequest(
          name: items.name,
          phone: items.phone,
          address: items.address,
          ownerName: items.ownerName),
    );

    response.when(
      success: (data) {
        emit(
          UpdateProfileState.success(data),
        );
      },
      failure: (error) {
        emit(
          UpdateProfileState.failure(
            error: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }
}
