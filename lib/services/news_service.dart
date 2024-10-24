import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

 Future<List<ArticleModel>> getNews() async {
    Response responce = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=e5dbe77693904649940819a5305d777a#');

    Map<String, dynamic> jsonData = responce.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description']);
          articlesList.add(articleModel);
    }
   return articlesList; 
  }
}
