import 'package:flutter/material.dart';
class Offers extends StatelessWidget {
  List<Widget> offerings(double width){
    return <Widget> [
      Container(

        width: 400,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("https://techpowergirls.net/wp-content/uploads/2020/11/social.png",height: 50,width: 50,fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Help you connect with other mothers who have a 5+ year gap in their career:",style: TextStyle(
                  fontSize: 20,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("You are talented and you’ve had to set your career aside to raise your family. But if you are looking forward to working again, or wish to upgrade your skills in the meantime, this is the right place to start.",style: TextStyle(
                  fontSize: 15
                ),),
              ),
            ],
          ),
        ),
      ),
      Container(

        width: 400,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("https://techpowergirls.net/wp-content/uploads/2020/11/social.png",height: 50,width: 50,fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Help you connect with other mothers who have a 5+ year gap in their career:",style: TextStyle(
                  fontSize: 20,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("You are talented and you’ve had to set your career aside to raise your family. But if you are looking forward to working again, or wish to upgrade your skills in the meantime, this is the right place to start.",style: TextStyle(
                    fontSize: 15
                ),),
              ),
            ],
          ),
        ),
      ),
      Container(

        width: 400,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("https://techpowergirls.net/wp-content/uploads/2020/11/social.png",height: 50,width: 50,fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Help you connect with other mothers who have a 5+ year gap in their career:",style: TextStyle(
                  fontSize: 20,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("You are talented and you’ve had to set your career aside to raise your family. But if you are looking forward to working again, or wish to upgrade your skills in the meantime, this is the right place to start.",style: TextStyle(
                    fontSize: 15
                ),),
              ),
            ],
          ),
        ),
      ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth > 800){
          return Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: offerings(constraints.biggest.width / 2),
              ),
            ),
          );

        }
        else{
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: offerings(constraints.biggest.width),
          );
        }
      },
    );
  }
}

