import 'package:flutter/material.dart';

class SushiPage extends StatelessWidget {
  const SushiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildNavbar(context),
                SizedBox(height: 20),
                buildPrimaryHeading(context),
                SizedBox(height: 10),
                buildSubPrimaryHeading(context),
                SizedBox(height: 10),
                buildGrid(context),
                SizedBox(height: 30),
                buildSecondaryHeading(context),
                SizedBox(height: 10),
                buildList(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildNavbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.arrow_back)
        ),
        IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.search)
        )
      ],
    );
  }

  buildPrimaryHeading(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Today's Special",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24
          ), 
        ),
        ElevatedButton.icon(
          icon: Icon(Icons.add_shopping_cart),
          style: ElevatedButton.styleFrom(
             backgroundColor: Colors.green, // background
             foregroundColor: Colors.white, // foreground
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30),
             ),
             padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
            //  elevation: 10,
            //  shadowColor: Color.fromARGB(255, 97, 221, 148),
           ),
          onPressed: (){}, 
          label: Text('CART'),
        )
      ],
    );
  }

  buildSubPrimaryHeading(BuildContext context) {
    return Text(
      "Find out what's cooking today!",
      style: TextStyle(
        color: Color.fromARGB(100, 0, 0, 0)
      ),
    );
  }

  buildGrid(BuildContext context) {
    return Row(
      children: [
        buildGridFullItem(
          context, 
          Color.fromARGB(255, 72, 193, 248),
          Color.fromARGB(255, 169, 230, 255), 
          'assets/images/sushi1.png',
          'Yoshimasa Sushi',
          5,
          250,
          'Lorem ipsum is a dummy text used for printing',
        ),
        SizedBox(width: 10),
        Container(
          width: MediaQuery.of(context).size.width * 4 / 10 - 25,
          child: Column(
            children: [
              buildGridSubItem(
                context, 
                Color.fromARGB(255, 97, 226, 122), 
                Color.fromARGB(255, 142, 240, 197), 
                'assets/images/sushi4.png', 'Yoshimasa Sushi', 
                5
              ),
              SizedBox(height: 20),
              buildGridSubItem(
                context, 
                Color.fromARGB(255, 68, 67, 69), 
                Color.fromARGB(255, 173, 172, 173), 
                'assets/images/sushi5.png', 'Prato Sushi', 
                5
              ),
            ],
          ),
        )
      ],
    );
  }

  buildSecondaryHeading(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Places',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width / 2,
              color: Color.fromARGB(100, 0, 0, 0) 
            ),
          ],
        )
      ],
    );
  }

  buildList(BuildContext context) {
    return Column(
      children: [
        buildListItem(
          context, 
          'assets/images/sushi6.png', 
          'Sushi Den', 
          5, 
          'Lorem ipsum sits dolar amet is for publishing'
        ),
        SizedBox(height: 20),
        buildListItem(
          context, 
          'assets/images/sushi7.png', 
          'Hatsuhana Sushi', 
          5, 
          'Lorem ipsum sits dolar amet is for publishing'
        )
      ],
    );
  }

  buildGridFullItem(BuildContext context, Color color, Color shadowColor, String image, String title, int star, int rating, String description) {
    return Container(
      width: MediaQuery.of(context).size.width * 6 / 10 - 25,
      height: 380,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: Offset(0, 10), // changes position of shadow
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Image(image: AssetImage(image)),
            SizedBox(height: 30),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5
              ),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (var i = 0; i < 5; i++) 
                  Icon(
                    Icons.star,
                    size: 16,
                    color: i < rating ? Colors.white : Color.fromARGB(100, 255, 255, 255),
                  ),
                SizedBox(width: 5),
                Text(
                  "${rating} Ratings",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }

  buildGridSubItem(BuildContext context, Color color, Color shadowColor, String image, String title, int rating) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: Offset(0, 10), // changes position of shadow
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(image)),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                for (var i = 0; i < 5; i++) 
                  Icon(
                    Icons.star,
                    size: 16,
                    color: i < rating ? Colors.white : Color.fromARGB(100, 255, 255, 255),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  buildListItem(BuildContext context, String image, String title, int rating, String description) {
    return Row(
      children: [
        Image(image: AssetImage(image)),
        SizedBox(width: 10),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5
                ),
              ),
              Row(
                children: [
                  for (var i = 0; i < 5; i++) 
                    Icon(
                      Icons.star,
                      size: 16,
                      color: i < rating ? Color.fromARGB(255, 218, 135, 63) : Color.fromARGB(100, 0, 0, 0),
                    ),
                ],
              ),
              Text(description),
            ],
          ),
        ),
        ElevatedButton(
          child: Text('Order Now'),
          style: ElevatedButton.styleFrom(
             primary: Colors.green, // background
             onPrimary: Colors.white, // foreground
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30),
             ),
             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
           ),
          onPressed: (){}, 
        )
      ],
    );
  }
}