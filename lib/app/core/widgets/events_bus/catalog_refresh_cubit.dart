import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogRefreshCubit extends Cubit<int> {
  CatalogRefreshCubit() : super(0);

  void notifyRefresh() {
    emit(state + 1);
  }
}
