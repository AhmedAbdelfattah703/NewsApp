import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState()  {
    
    super.initState();
     getGeneralMethod();
  }

  Future<void> getGeneralMethod() async {
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {
      
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return isLoading ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(),),)
     : articles.isNotEmpty?  NewsListView(
      articles: articles,
    ) : SliverToBoxAdapter(child: Text('oops there was an error,try later'),);
  }
}