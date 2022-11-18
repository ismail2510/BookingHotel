import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class BookGetX extends GetxController {

   bookData(BuildContext context,
       String name,String id,String phone,String nationality,int rooms,int adult ,int child,String Cin ,String Cout,String hotelName)async {
     await FirebaseFirestore.instance.collection('bookingInfo').doc().set({
       'name':name,
       'hotelName':hotelName,
       'phone':phone,
       'id':id,
       'nationality':nationality,
       'Cin':Cin,
       'Cout':Cout,
       'rooms':rooms,
       'child':child,
       'adult':adult,

     }).then((value) { Get.snackbar('Hello their', 'booked successfully');
Navigator.pop(context);
     });

  }


}