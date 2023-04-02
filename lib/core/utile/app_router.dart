import 'package:bookly/Features/Search/data/repos/search_repo_impl.dart';
import 'package:bookly/Features/Search/presentation/manager/cubits/search_cubit/search_cubit.dart';
import 'package:bookly/Features/Search/presentation/views/search_view.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/Home/presentation/manager/cubit/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/Home/presentation/views/home_view.dart';
import 'package:bookly/core/utile/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String bookDetailsViewPath = '/bookDetailsView';
  static String searchViewPath = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: searchViewPath,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SearchCubit(searchRepo: getIt.get<SearchRepoImpl>()),
          child: const SearchView(),
        ),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsViewPath,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            book: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
