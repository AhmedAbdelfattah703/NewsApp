import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.bottomCenter,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(6), bottomLeft: Radius.circular(6))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                articleModel.image!,//i will come back to edit this by adding ?? 'fixed image'
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 12,
          ),
           Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
           Text(
            articleModel.subTitle??"this article have no subtitle",
            maxLines: 2,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          )
        ],
      ),
    );
  }
}
