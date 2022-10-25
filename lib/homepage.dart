import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final String src = "https://images.unsplash.com/photo-1661956603025-8310b2e3036d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Welcome to my class", 
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(100, 255, 0, 0)
                ),
              ),
              Text("Mobile Programing Group 1"),
              Image.network(src),
              Image.asset("assets/images/car.jpg")
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Xin chao");
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Icon(Icons.home),
      ),
    );
  }
}
