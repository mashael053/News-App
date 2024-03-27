import 'dart:async';

import 'package:dio/dio.dart';
import 'package:last_app/data/models/get_news_models_.dart';

class GetNewsRepository {
  final dio = Dio();

  Future  <GetNewsModels?> getNews() async {
    Response response;
    response = await dio.get("https://newsapi.org/v2/everything?q=tesla&from=2024-02-27&sortBy=publishedAt&apiKey=109ff3186b9d41b3b1f03d12ff2cc6a0");

    GetNewsModels myNews = GetNewsModels.fromJson(response.data);
    print("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
    print(response);
    print("this is news data ${myNews.totalResults}");
    if (response.statusCode == 200) {
      GetNewsModels myNews = GetNewsModels.fromJson(response.data);
      print(myNews);
      print(myNews);
      print(myNews);
      return myNews;
    } else {
      return null;
    }
  }
}

