import 'package:demo1/genre_slider.dart';
import 'package:demo1/slider.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  final String src =
      "https://images.unsplash.com/photo-1661956603025-8310b2e3036d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            GenreSlider(),
            SliderDestination(),
            blockImage(),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  blockTitle(),
                  Padding(
                      padding: const EdgeInsets.all(40),
                      child: blockActionButtons()),
                  blockDescription()
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  blockImage() {
    return (Image.network(src));
  }

  blockTitle() {
    return (Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      ConstrainedBox(
        constraints: BoxConstraints(minHeight: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Oeschinen Lake Campground",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Kandersteg, Switzerland",
                style: TextStyle(color: Color.fromARGB(100, 0, 0, 0))),
          ],
        ),
      ),
      Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.orange,
          ),
          Text("41")
        ],
      ),
    ]));
  }

  blockActionButtons() {
    return (Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      actionButton(Icons.call, "CALL"),
      actionButton(Icons.near_me, "ROUTE"),
      actionButton(Icons.share, "SHARE"),
    ]));
  }

  blockDescription() {
    return (Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."));
  }

  actionButton(IconData icon, String text, {color = Colors.blue}) {
    return TextButton(
      onPressed: () {},
      child: (Column(children: [
        Icon(icon, color: color),
        Text(
          text,
          style: TextStyle(color: color),
        )
      ])),
    );
  }
}
