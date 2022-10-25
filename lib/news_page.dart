import 'package:demo1/components/news_item.dart';
import 'package:demo1/provider/News.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var newsProvider = Provider.of<NewsProvider>(context);
    newsProvider.getList();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: newsProvider.list.map((e) {
            return NewsItem(item: e);
          }).toList(),
        ),
      ),
    );
  }
}
