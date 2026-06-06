import 'package:flutter_bloc/flutter_bloc.dart';

class OffersUiState {
  final bool showFilter;
  final String selectedCategory;

  const OffersUiState({
    required this.showFilter,
    required this.selectedCategory,
  });

  factory OffersUiState.initial() {
    return const OffersUiState(
      showFilter: false,
      selectedCategory: 'All',
    );
  }

  OffersUiState copyWith({
    bool? showFilter,
    String? selectedCategory,
  }) {
    return OffersUiState(
      showFilter: showFilter ?? this.showFilter,
      selectedCategory: selectedCategory ?? this.selectedCategory,
    );
  }
}

class OffersUiCubit extends Cubit<OffersUiState> {
  OffersUiCubit() : super(OffersUiState.initial());

  void toggleFilter() {
    emit(
      state.copyWith(
        showFilter: !state.showFilter,
      ),
    );
  }

  void selectCategory(String category) {
    emit(
      state.copyWith(
        selectedCategory: category,
      ),
    );
  }
}
