

import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 300,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(0.7),
          ),
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Center(
                  child: Text(
                    "Flutter Community to Empower the SuperMoms",
                    style: TextStyle(
                        fontSize: 30.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 30),
                child: Center(
                  child: Text(
                    "Learn together Grow Together",
                    style: TextStyle(fontSize: 20.0, color: Colors.red),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              MaterialButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    "Connect Us",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.network(
          "https://techpowergirls.net/wp-content/uploads/2020/10/help-you2.png",
          width: width,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Container(
            color: Colors.blueAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: pageChildren(constraints.biggest.width / 2),
            ),
          );
        } else {
          return Container(
            color: Colors.blueAccent,
            child: Column(
              children: pageChildren(constraints.biggest.width),
            ),
          );
        }
      },
    );
  }
}
