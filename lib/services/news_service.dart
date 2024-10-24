import 'package:dio/dio.dart';

class NewsService{
  final Dio dio;

  NewsService(this.dio);
  
  getNews()async{
    Response responce =await dio.get('https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=e5dbe77693904649940819a5305d777a#');
  
  Map<String,dynamic> jsonData = responce.data;
  print(jsonData);
  }
}