import 'package:flutter/material.dart';

import 'news_container.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(childCount: 10,(context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 22),
        child: NewsTile(),
      );
    } ));
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