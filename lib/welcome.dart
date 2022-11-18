import 'package:booking_hotels/login.dart';
import 'package:flutter/material.dart';
class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    var height=size.height;
    var width=size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        title: Text("About"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Welcome ,To Our App",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.black,
                    ),
                    shape: BoxShape.rectangle,

                ),

                margin: EdgeInsets.only(left: 0,right: 0,top:20,bottom: 25),
                width: width,
                height:height*0.20,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("    In this app you can get everything you need to Know to stay safe ,Find the perfect place to stay, hotels, motels, resorts & more,Contactless check-in. Best travel planning tool.",
                    style: TextStyle(fontSize:18,),),
                ),

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(

                width: width,
                height: height/2.88,
                child: Image.network("https://etw7b4vo446.exactdn.com/wp-content/uploads/2020/11/%D8%A3%D9%81%D8%B6%D9%84-10-%D9%85%D9%88%D8%A7%D9%82%D8%B9-%D9%84%D8%AD%D8%AC%D8%B2-%D8%A7%D9%84%D9%81%D9%86%D8%A7%D8%AF%D9%82-2021.jpg?strip=all&lossy=1&ssl=1")),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Log in", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  IconButton(icon:Icon(Icons.keyboard_arrow_right_outlined,size: 40,),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (_)=> Login()));
                  },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}
