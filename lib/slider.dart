import 'package:demo1/components/destination_item.dart';
import 'package:demo1/model/DestinationModel.dart';
import 'package:flutter/material.dart';

class SliderDestination extends StatelessWidget {
  SliderDestination({Key? key}) : super(key: key);
  // final List<String> _list = [
  //   'assets/images/img1.jpg',
  //   'assets/images/img2.jpg',
  //   'assets/images/img3.jpg',
  //   'assets/images/img4.jpg',
  //   'assets/images/img5.jpg',
  // ];
  final List<DestinationModel> _list = DestinationModel.MockData();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 300,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _list.map((e) {
            return DestinationItem(destinationModel: e);
            // return Container(
            //   margin: EdgeInsets.all(10),
            //   height: 300,
            //   width: MediaQuery.of(context).size.width,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     image: DecorationImage(
            //       image: AssetImage(e),
            //       fit: BoxFit.cover
            //     )
            //   ),
            // );
          }).toList(),
        ),
      ),
    );
  }
}
