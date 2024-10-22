import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/categories_listview.dart';
// import 'package:news_app_ui_setup/widgets/news_container.dart';


// import '../widgets/categories_listview.dart';
import '../widgets/news_listview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "App",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      // body:   Column(
      //   children: [
      //     CategoriesListView(),
      //     const SizedBox(
      //       height: 16,
      //     ),
      //   const Expanded(child:   NewsListView()),
      //   ],
      // ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CategoriesListView() ,
          ),
          SliverToBoxAdapter(
            child: SizedBox(
            height: 16,
          ) ,
          ),
          NewsListView(),
        ],
      ),
    );
  }
}




