import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/home/data/repos/home_repo.dart';
import 'package:B2B/app/features/home/logic/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial());

  void emitHomeStates() async {
    emit(const HomeState.loading());
    final response = await _homeRepo.getHomeDashboard();
    response.when(
      success: (dashboardResponse) async {
        emit(HomeState.success(dashboardResponse));
      },
      failure: (error) {
        emit(HomeState.failure(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
