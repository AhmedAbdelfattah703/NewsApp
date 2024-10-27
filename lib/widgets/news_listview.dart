import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';

import 'news_container.dart';



class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles ;

  const NewsListView({super.key, required this.articles});
  
 

  

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 22),
              child: NewsTile(
                articleModel: articles[index],
              ),
            );
          }));
    // return ListView.builder(
    //   shrinkWrap: true,
    //   physics: NeverScrollableScrollPhysics(),
    //   itemCount: 10,
    //   itemBuilder: (context,index){
    //   return const Padding(
    //     padding:  EdgeInsets.only(bottom: 22),
    //     child:  NewsTile(),
    //   );
    // });
  }
}
