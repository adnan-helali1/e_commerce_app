import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavState {
  final int index;

  const BottomNavState(this.index);
}

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(const BottomNavState(0));

  final PageController pageController = PageController();

  void changeIndex(int index) {
    emit(BottomNavState(index));
    pageController.jumpToPage(index);
  }

  void onPageChanged(int index) {
    emit(BottomNavState(index));
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
