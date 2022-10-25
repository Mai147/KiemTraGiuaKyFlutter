import 'package:demo1/model/DestinationModel.dart';
import 'package:flutter/material.dart';

class DestinationItem extends StatelessWidget {
  final DestinationModel destinationModel;

  const DestinationItem({Key? key, required this.destinationModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Align(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 400,
                width: 250,
                // width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(destinationModel.image),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  destinationModel.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Row(
                  children: [
                    ...destinationModel.genre.asMap().entries.map((entry) {
                      int idx = entry.key;
                      String val = entry.value;

                      return Row(children: [
                        Text(val),
                        if (idx < destinationModel.genre.length - 1)
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.brightness_1_outlined,
                              size: 14,
                            ),
                          )
                      ]);
                    })
                  ],
                  // children: [...destinationModel.genre.map((gen) {
                  //   return Row(
                  //     children: [
                  //       Text(gen),
                  //       Icon(Icons.all_out)
                  //     ]
                  //   );
                  // })],
                ),
                Text(
                  destinationModel.rating.toString(),
                  style: TextStyle(fontSize: 20),
                ),
                Row(children: [
                  for (var i = 0; i < 5; i++)
                    Icon(
                      Icons.star,
                      color: destinationModel.rating > i
                          ? Colors.yellow
                          : Color.fromARGB(100, 25, 25, 25),
                    )
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
