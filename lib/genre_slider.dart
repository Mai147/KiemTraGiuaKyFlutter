import 'package:flutter/material.dart';

class GenreSlider extends StatefulWidget {
  const GenreSlider({Key? key}) : super(key: key);

  @override
  State<GenreSlider> createState() => _GenreSliderState();
}

class _GenreSliderState extends State<GenreSlider> {
  final List<String> _list = [
    'Gen1',
    'Gen2 Gen x',
    'Gen3 Gen y',
    'Gen3 Gen Gen Gen Gen',
    'Gen3',
    'Gen3',
    'Gen3',
    'Gen3',
    'Gen3',
    'Gen3',
    'Gen3',
    'Gen3',
    'Gen3',
    'Gen3',
    'Gen3',
    'Gen3',
    'Gen3',
    'Gen3',
    'Gen3',
  ];

  String activeItem = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _list.map((e) { 
            return TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(0))
              ),
              onPressed: () {
                setState(() {
                  activeItem = e;
                });
              },
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: activeItem != e ? Color.fromARGB(255, 80, 80, 80) : Color.fromARGB(255, 255, 255, 255),
                  border: activeItem == e ? Border.all(color: Colors.black) : null
                ),
                child: Text(
                  e, 
                  style: TextStyle(color: activeItem != e ? Colors.white : Colors.black,),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}