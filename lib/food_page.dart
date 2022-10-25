import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  List<String> list = [
    'assets/images/img1.jpg',
    'assets/images/img2.jpg',
    'assets/images/img3.jpg',
    'assets/images/img4.jpg',
  ];

  bool showGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            buildTitle(context),
            buildWelcome(context),
            SizedBox(
              height: 15,
            ),
            buildSearch(context),
            SizedBox(
              height: 25,
            ),
            buildSavedPlace(context),
            SizedBox(
              height: 5,
            ),
            showGrid ? buildGrid(context) : buildList(context)
          ]),
        ),
      ),
    );
  }

  buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        IconButton(onPressed: () {}, icon: Icon(Icons.extension)),
      ],
    );
  }

  buildWelcome(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome,",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        Text(
          "Charlie",
          style: TextStyle(fontSize: 26),
        )
      ],
    );
  }

  buildSearch(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }

  buildSavedPlace(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Save places",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    showGrid = true;
                  });
                },
                icon: Icon(Icons.grid_view_sharp)),
            IconButton(
                onPressed: () {
                  setState(() {
                    showGrid = false;
                  });
                },
                icon: Icon(Icons.list_alt_sharp))
          ],
        ),
      ],
    );
  }

  buildGrid(BuildContext context) {
    return Expanded(
      child: GridView.count(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount: 2,
          children: list.map((e) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(e), fit: BoxFit.cover),
              ),
            );
          }).toList()),
    );
  }

  buildList(BuildContext context) {
    return Expanded(
      child: ListView(
          scrollDirection: Axis.vertical,
          children: list.map((e) {
            return Container(
              height: 350,
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(e))),
            );
          }).toList()),
    );
  }
}
