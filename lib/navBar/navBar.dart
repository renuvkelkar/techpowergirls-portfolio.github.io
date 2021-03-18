import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth>1200){
            return DeskTopNavBar();
          }else if (constraints.maxWidth>800 &&constraints.maxWidth < 1200)
            { return DeskTopNavBar();}
          else {
            return MobileNavBar();
          }
        }
    );
  }
}

class DeskTopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
        child: Container(

          //constraints: BoxConstraints(maxWidth: 1200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network("https://techpowergirls.net/wp-content/uploads/2020/09/logo_new.png"),
//              Text("TechPowerGirls",style: TextStyle(
//                fontWeight: FontWeight.bold,
//                color: Colors.pink,
//                fontSize: 30
//              ),),
              Row(
                children: [
                  MaterialButton(
                    color: Colors.red,
                    onPressed: (){
                      Get.toNamed('/aboutUs');
                    },
                    child: Text("Home",style: TextStyle(


                        fontSize: 15
                    ),),
                  ),
                  SizedBox(width: 30,),
                  InkWell(
                    onTap: (){
                      Get.toNamed('/aboutUs');
                    },
                    child: Text("About Us",style: TextStyle(
                        fontSize: 15
                    ),),
                  ),
                  SizedBox(width: 30,),
                  Text("Our App",style: TextStyle(
                      fontSize: 15
                  ),),
                  SizedBox(width: 30,),
                  Text("Workshop",style: TextStyle(
                      fontSize: 15
                  ),),
                  SizedBox(width: 30,),
                  Text("Blog",style: TextStyle(
                      fontSize: 15
                  ),),
                  SizedBox(width: 30,),
                  Text("Contact Us",style: TextStyle(
                      fontSize: 15
                  ),),

                  SizedBox(width: 20,),
//                  MaterialButton(onPressed: (){},
//                    color: Colors.pink,
//                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20.0)),
//                    child: Text("Get Started",style: TextStyle(
//                      color: Colors.white
//                    ),
//                    ),
//                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
            child: Text("TechPowerGirls",style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.pink,
                fontSize: 30,

            ),),
          ),
          Container(
            height: 80,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: Colors.red,
                    onPressed: (){
                      Get.toNamed('/aboutUs');
                    },
                    child: Text("Home",style: TextStyle(


                        fontSize: 15
                    ),),
                  ),
                  SizedBox(width: 30,),
                  InkWell(
                    onTap: (){
                      Get.toNamed('/aboutUs');
                    },
                    child: Text("About Us",style: TextStyle(
                        fontSize: 15
                    ),),
                  ),
                  SizedBox(width: 30,),
                  Text("Our App",style: TextStyle(
                      fontSize: 15
                  ),),
                  SizedBox(width: 30,),
                  Text("Workshop",style: TextStyle(
                      fontSize: 15
                  ),),
                  SizedBox(width: 30,),
                  Text("Contact Us",style: TextStyle(
                      fontSize: 15
                  ),),

                  SizedBox(width: 20,),
//              MaterialButton(onPressed: (){},
//                color: Colors.pink,
//                shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20.0)),
//                child: Text("Get Started",style: TextStyle(
//                    color: Colors.white
//                ),
//                ),
//              )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

