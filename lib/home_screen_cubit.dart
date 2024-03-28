import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_app/data/models/get_news_models_.dart';
import 'package:last_app/data/reposirory/get_news_repository.dart';
import 'package:meta/meta.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenInitial());

  Future<void> getUpdates() async {
    emit(HomeScreenLoading());

    GetNewsModels? myNews = await GetNewsRepository().getNews();
    print(myNews);
    if (myNews != null) {
      emit(HomeScreenSuccess(myNews));
    } else {
      emit(HomeScreenError());
    }
  }
}
