import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  NewsPage();

  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments! as Map;
    String title = article['title'] ?? '';
    String description = article['description'] ?? '';
    String image = article['urlToImage'];
    String date = article['publishedAt'] ?? '';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('NEWS'),
      ),
      body: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          image==null?SizedBox():
          SizedBox(
            child: Image.network(image ?? '',
              height: 280,

              errorBuilder: (context,obj,st,)=>SizedBox(),),
          ),
          Text(description),
          SizedBox(height: 36),
          Row(
            children: [
              Text('Date: '),
              Text(date),
            ],
          )
        ],
      ),
    );
  }
}
