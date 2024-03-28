part of 'home_screen_cubit.dart';

@immutable
sealed class HomeScreenState {}

final class HomeScreenInitial extends HomeScreenState {}

final class HomeScreenLoading extends HomeScreenState {}

final class HomeScreenSuccess extends HomeScreenState {
  final GetNewsModels myNews;
  HomeScreenSuccess(this.myNews);
}

final class HomeScreenError extends HomeScreenState {}
