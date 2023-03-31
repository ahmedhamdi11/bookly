import 'package:bloc/bloc.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  bool _closed = false;

  @override
  Future<void> close() {
    _closed = true;
    return super.close();
  }

  Future fetchSimilarBooks({required String category}) async {
    if (_closed) return;
    emit(SimilarBooksLoadingState());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      if (_closed) return;
      emit(SimilarBooksFailureState(failure.errorMessage));
    }, (books) {
      if (_closed) return;
      emit(SimilarBooksSuccessState(books));
    });
  }
}
