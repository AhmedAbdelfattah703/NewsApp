import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/views/home_view.dart';
//import 'package:news_app/widgets/category_card.dart';
// import 'package:news_app_ui_setup/main.dart';
void main() {
  getNews();
  runApp(const NewsApp());
}
final dio = Dio();
void getNews() async {
  
  final response = await dio.get('https://newsapi.org/v2/everything?q=bitcoin&apiKey=e5dbe77693904649940819a5305d777a');
  print(response);
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
