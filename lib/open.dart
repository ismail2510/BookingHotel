import 'package:booking_hotels/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    var height=size.height;
    var width=size.width;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        title: Row(
          children: [
            Text("Hello..", style: TextStyle(fontSize:25, fontWeight: FontWeight.bold),),
            Icon(Icons.hail)
            
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          color: Colors.orangeAccent,
          child:Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://previews.123rf.com/images/rashadashurov/rashadashurov1911/rashadashurov191101098/133748924-hotel-booking-icon-simple-element-illustration-hotel-booking-concept-symbol-design-can-be-used-for-w.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child:  ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 557),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Tap to continue", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      IconButton(icon:Icon(Icons.keyboard_arrow_right_outlined,size: 40,),
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (_)=> Second()));
                        },
                      ),
                    ],
                  ),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}// Navigator.push(context,MaterialPageRoute(builder: (_)=> Second()));