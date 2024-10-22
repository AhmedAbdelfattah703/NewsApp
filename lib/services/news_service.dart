import 'package:dio/dio.dart';

class NewsService{
  final Dio dio;

  NewsService({required this.dio});
  void getGenaralNews() async {
  
  final response = await dio.get('https://newsapi.org/v2/everything?q=bitcoin&apiKey=e5dbe77693904649940819a5305d777a');
  print(response);
}
void getSportsNews() async {
  
  final response = await dio.get('https://newsapi.org/v2/everything?q=sports&apiKey=e5dbe77693904649940819a5305d777a');
  print(response);
}
}