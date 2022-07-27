import 'package:flutter/material.dart';

class DetailsTripPage extends StatelessWidget {
  const DetailsTripPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    height: size.height * 0.50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/trip.jpg'),
                        fit: BoxFit.fill,
                      ),
                    )),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.amber,
                            size: 38,
                          ))
                    ],
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
