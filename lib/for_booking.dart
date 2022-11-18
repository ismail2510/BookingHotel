import 'package:booking_hotels/view/widgets/inputField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'controller/book_getX.dart';

class Booking_Page extends StatefulWidget
{
  final String? name;

  const Booking_Page({Key? key, this.name}) : super(key: key);
  @override
  State<Booking_Page> createState() => _Booking_PageState();
}

class _Booking_PageState extends State<Booking_Page> {
  TextEditingController n1=TextEditingController();

  TextEditingController n2=TextEditingController();

  TextEditingController n3=TextEditingController();

  TextEditingController n4=TextEditingController();

  TextEditingController n5=TextEditingController();

  TextEditingController n6=TextEditingController();

  TextEditingController n7=TextEditingController();

  TextEditingController n8=TextEditingController();

  TextEditingController n9=TextEditingController();

  int _value =1;
  String _selectedDate = DateFormat.yMd().format(DateTime.now());
  String _selectedDate2 = DateFormat.yMd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    print(widget.name);

    var size =MediaQuery.of(context).size;
    var height=size.height;
    var width=size.width;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        title: Container(
          child: Text("Booking",style: TextStyle(fontSize:20,),),
        ),
      ),
      backgroundColor: Colors.white.withOpacity(0.9),
      body: ListView(
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 22,left: 10),
                child: Text("Full Name :",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),
                height: 30,

              ),
              Container(
                margin: EdgeInsets.only(left: 20,top: 15),
                child: TextField(
                  controller: n1,
                ),
                width: width-160,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 1, color: Colors.blue.shade700,
                  ),

                ),
              ),

            ],
          ),

          Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 28,left: 10),
                child: Text("ID Number:",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),
                height: 30,

              ),
              Container(
                margin: EdgeInsets.only(left: 20,top: 20),
                child: TextField(
                  controller: n2,
                ),
                width: width-160,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 1, color: Colors.blue.shade700,
                  ),

                ),
              ),

            ],
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 28,left: 10),
                child: Text("Phone Num: ",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),
                height: 40,

              ),
              Container(
                margin: EdgeInsets.only(left: 10,top: 20),
                child: TextField(
                  controller: n3,
                ),
                width: width-160,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 1, color: Colors.blue.shade700,
                  ),

                ),
              ),

            ],
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 28,left: 10),
                child: Text("Nationality:",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),
                height: 30,

              ),
              Container(
                margin: EdgeInsets.only(left: 20,top: 20),
                child: TextField(
                  controller: n4,
                ),
                width: width-160,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 1, color: Colors.blue.shade700,
                  ),

                ),
              ),

            ],
          ),

          Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 17,left: 10),
                child: Text("Gender:",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),
                height: 17,

              ),

            ],
          ),

          Padding(
            padding:const EdgeInsets.only(left:20 ),
            child: Row(
              children: [
                Radio(value: 1, groupValue: _value, onChanged: ( value){
                  setState(() {
                    _value =1;
                  });

                },),
                Text("male"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20 ),
            child: Row(
              children: [
                Radio(value: 2, groupValue: _value, onChanged: (value){
                  setState((){
                    setState(() {
                      _value =2;
                    });
                  });

                },),
                Text("female"),
              ],
            ),
          ),

          Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10,left: 10),
                child: Text("Guests:",style: TextStyle(fontSize:17,color: Colors.black,fontWeight: FontWeight.bold),),
                height: 30,

              ),

            ],
          ),
          Row(
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 3,left: 18),
                    child: Text("Rooms:",style: TextStyle(fontSize:15,color: Colors.black),),
                    height: 25,

                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8,top: 0),
                    child: TextField(
                      controller: n5,
                      keyboardType: TextInputType.number,

                    ),
                    width: width-310,
                    height: 27,
                    decoration: BoxDecoration(
                      borderRadius:  BorderRadius.all(Radius.circular(5)),
                      border: Border.all(width: 1, color: Colors.blue.shade700,
                      ),

                    ),
                  ),

                ],
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 3,left: 10),
                    child: Text("Adults:",style: TextStyle(fontSize:15,color: Colors.black),),
                    height: 25,

                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8,top: 0),
                    child: TextField(
                      controller: n6,
                      keyboardType: TextInputType.number,
                    ),
                    width: width-310,
                    height: 27,
                    decoration: BoxDecoration(
                      borderRadius:  BorderRadius.all(Radius.circular(5)),
                      border: Border.all(width: 1, color: Colors.blue.shade700,
                      ),

                    ),
                  ),

                ],
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 3,left: 15),
                    child: Text("Child:",style: TextStyle(fontSize:15,color: Colors.black),),
                    height: 25,

                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8,top: 0),
                    child: TextField(
                      controller: n7,
                      keyboardType: TextInputType.number,

                    ),
                    width: width-310,
                    height: 27,
                    decoration: BoxDecoration(
                      borderRadius:  BorderRadius.all(Radius.circular(5)),
                      border: Border.all(width: 1, color: Colors.blue.shade700,
                      ),

                    ),
                  ),

                ],
              ),
            ],
          ),



          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  child: InputField(
                    texth: 16,
                    controller: n8,
                    isEnabled: false,
                    hint: '${_selectedDate.toString()}',
                    label: 'Check In',
                    iconOrdrop: 'button',
                    widget: IconButton(
                      icon: Icon(
                        Icons.date_range,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        _selectDate(context);
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(width: 30,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,right: 10),
                  child: InputField(
                    texth: 16,
                    controller: n9,
                    isEnabled: false,
                    hint: '${_selectedDate2.toString()}',
                    label: 'Check Out',
                    iconOrdrop: 'button',
                    widget: IconButton(
                      icon: Icon(
                        Icons.date_range,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        _selectDate2(context);
                      },
                    ),
                  ),
                ),
              )
            ],
          ),


          Padding(
            padding: const EdgeInsets.only(right: 90,left: 90,top: 15),
            child: Container(
              height: 50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
                child: Text("Booking Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                onPressed: (){
                  String a=n1.text;
                  String b=n2.text;
                  String c=n3.text;
                  String d=n4.text;
                  String e=n5.text;
                  String f=n6.text;
                  String g=n7.text;
                  String h=n8.text;
                  String i=n9.text;

                  Get.put(BookGetX()).bookData(context,a, b, c, d,int.tryParse(e)!, int.tryParse(f)!, int.tryParse(g)!, _selectedDate, _selectedDate2,widget.name!);
                },
                color: Colors.black,
              ),
            ),
          ),


        ],
      ),


    );
  }
  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      currentDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
    setState(() {
      if (selected != null) {
        _selectedDate = DateFormat.yMd().format(selected).toString();
      } else
        _selectedDate = DateFormat.yMd().format(DateTime.now()).toString();
    });
  }
  _selectDate2(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      currentDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
    setState(() {
      if (selected != null) {
        _selectedDate2= DateFormat.yMd().format(selected).toString();
      } else
        _selectedDate2 = DateFormat.yMd().format(DateTime.now()).toString();
    });
  }

}