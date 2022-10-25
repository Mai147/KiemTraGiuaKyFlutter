import 'package:demo1/model/NewsModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class NewsItemPage extends StatelessWidget {
  // const NewsItemPage({super.key});
  final NewsModel item;

  const NewsItemPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Text(item.description ?? ""),
        // child: Html(
        //   data: "<h1>Hello</h1>",
        // ),
      ),
    );
  }
}
