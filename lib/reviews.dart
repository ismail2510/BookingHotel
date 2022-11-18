import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reviews extends StatelessWidget
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

        title: Container(
          child: Text("Reviews",style: TextStyle(fontSize:20),),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Icon(Icons.list_alt,size: 60,),
          ),
          Center(
            child: Text("No Reviews yet...",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
        ],
      ),

    );
  }
}