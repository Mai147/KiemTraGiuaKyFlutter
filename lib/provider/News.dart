import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:demo1/model/NewsModel.dart';
import 'package:flutter/material.dart';

class NewsProvider extends ChangeNotifier {
  List<NewsModel> list = [];
  void getList() async {
    String apiUrl =
        "https://newsapi.org/v2/everything?q=tesla&from=2022-09-18&sortBy=publishedAt&apiKey=84a4f158842b40e58632b314db35b625";
    var client = http.Client();
    var jsonString = await client.get(Uri.parse(apiUrl));
    var jsonObject = jsonDecode(jsonString.body);
    var newsListObject = jsonObject['articles'] as List;
    list = newsListObject.map((e) {
      return NewsModel.fromJson(e);
    }).toList();
    notifyListeners();
  }
}
