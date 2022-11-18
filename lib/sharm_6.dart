import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';


class Falcon_Hills extends StatelessWidget {
  const Falcon_Hills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height=size.height;
    var width=size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Falcon Hills"),
      ),
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10,top: 20,bottom: 10),
                child:
                Text("hotel info :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),

              Container(
                margin: EdgeInsets.only(left: 5,top: 15,right: 0),
                height: 120,
                child: ListView(
                  scrollDirection:Axis.horizontal
                  ,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5,right: 4),
                      width:width/3 ,
                      height: height/5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/25/3a/0e/80/exterior.jpg?w=700&h=-1&s=1'

                            ),
                            fit: BoxFit.fill),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 4),
                      width:width/3 ,
                      height: height/5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://media-cdn.holidaycheck.com/w_768,h_432,c_fill,q_auto,f_auto/ugc/images/437c7b4a-b8c6-4a2c-8a3f-bc7c1f32a30b',

                            ),
                            fit: BoxFit.fill),),


                    ),
                    Container(
                      margin: EdgeInsets.only(left: 4,right: 5),
                      width:width/3 ,
                      height: height/5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://p.bookcdn.com/data/Photos/Big/11427/1142784/1142784628/Hilton-Luxor-Resort-Spa-photos-Exterior-Hilton-Luxor-Resort-Spa.JPEG'
                            ),
                            fit: BoxFit.fill),),

                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8,top: 25,right: 8),
                child: Row(
                  children: [
                    Text("Rooms : 550",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(width: 73,),
                    Text("Travelers : 3000",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,top: 12),
                child: Row(
                  children: [
                    Container(child: Text("The Price : 3500 ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),),
                    Icon(Icons.price_change_rounded),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Container( margin:EdgeInsets.only(left: 8),child: Text("Provide :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Row(children: [Icon(Icons.wifi),Text("WIFI",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))]),
                    SizedBox(width: 100,),
                    Row(children: [Icon(Icons.breakfast_dining),Text("Breakfast",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))],),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,),
                child: Row(children: [Icon(Icons.local_parking_outlined),Text("Parking",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))],),
              ),

              SizedBox(height: 20,),
              Container( margin:EdgeInsets.only(left: 8),child: Text("Contact Us :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    IconButton(onPressed:(){
                      //Navigator.push(context, MaterialPageRoute(builder: (_)=> Location1()));
                    }, icon: Icon(Icons.location_on)),
                    SizedBox(width: 10,),
                    IconButton(onPressed:(){
                      launch("https://ar-ar.facebook.com/HiltonLuxorResortAndSpa/");
                      //https://m.facebook.com/profile.php?id=139340932872218&__tn__=C-R
                    }, icon: Icon(Icons.facebook)),
                    SizedBox(width: 10,),
                    IconButton(onPressed:(){
                      launch("tel:0952399999");
                      //02 24619494
                    }, icon: Icon(Icons.contact_phone_outlined)),
                    SizedBox(width: 10,),
                    IconButton(onPressed:(){
                      launch("sms:0224619494");
                    }, icon: Icon(Icons.sms_rounded)),
                  ],),
              ),


              Container(
                margin: EdgeInsets.all(35),
                width: 120,
                height: 50,
                child: RaisedButton(onPressed: (){},
                  child: Text("For Booking",style: TextStyle(fontSize: 18),),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
/*
class Location1 extends StatelessWidget {
  const Location1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          onMapCreated: (x){},
          initialCameraPosition: CameraPosition(
            target: LatLng(30.071773841454977, 31.227928602951774),
            zoom: 18.0,

          ),
          markers: {
            const Marker(
              markerId: MarkerId("1"),
              position: LatLng(29.99287787362776, 31.41413532443398),
              infoWindow: InfoWindow(
                title:"Fairmont Nile City",

              ),
            ),
          }


      ),
    );
  }
}*/
