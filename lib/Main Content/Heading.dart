import 'package:flutter/material.dart';
class Heading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Here’s what we do:",style: TextStyle(
              fontSize: 40,
            ),),
          ),
          Image.network("http://techpowergirls.net/wp-content/uploads/2020/10/what-we-do.png",height: 300,width: 400,fit: BoxFit.cover,),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
