import 'dart:convert'; // Import this to use json.decode

class GetNewsModels {
  String status;
  int totalResults;
  List<Article>? articles; // Use nullable List<Article>

  GetNewsModels({
    required this.status,
    required this.totalResults,
    this.articles,
  });

  factory GetNewsModels.fromJson(Map<String, dynamic> json) {
    // var articlesList = json['articles'] as List?;
    // List<Article>? articles = articlesList?.map((articleJson) => Article.fromJson(articleJson)).toList();

    return GetNewsModels(
      status: json['status'],
      totalResults: json['totalResults'],
      articles: List<Article>.from(json['articles'].map((x) => Article.fromJson(x))),
    );
  }
}


class Article {
  Source source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Article({
    required this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }
}

class Source {
  String? id;
  String name;

  Source({
    this.id,
    required this.name,
  });

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json['id'],
      name: json['name'],
    );
  }
}