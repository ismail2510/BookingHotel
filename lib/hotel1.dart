import 'package:booking_hotels/for_booking.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Hotel1 extends StatelessWidget {
final String? name;

  const Hotel1({Key? key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        title: Text("Fairmont Nile City"),
      ),
      backgroundColor: Colors.white.withOpacity(0.8),
      body: SafeArea(
        child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10,top: 20,bottom: 10),
                child:
                Text("hotel info :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),

              Container(
                margin: EdgeInsets.only(left: 5,top: 15),
                height: 120,
                child: ListView(
                  scrollDirection:Axis.horizontal
                  ,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5,right: 4),
                      width: 150,
                      child: Image.network("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/a9/61/fe/fairmont-cairo-nile-city.jpg?w=1200&h=-1&s=1"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 4),
                      width: 150,

                      child: Image.network("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/1e/e5/d4/fairmont-nile-city.jpg?w=1200&h=-1&s=1"

                      ),

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8,right: 5),
                      width: 150,
                      child: Image.network("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/a9/60/fc/fairmont-cairo-nile-city.jpg?w=1200&h=-1&s=1"),
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
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> Location1()));
                    }, icon: Icon(Icons.location_on)),
                    SizedBox(width: 10,),
                    IconButton(onPressed:(){
                      launch("https://m.facebook.com/profile.php?id=139340932872218&__tn__=C-R");
                      //https://m.facebook.com/profile.php?id=139340932872218&__tn__=C-R
                    }, icon: Icon(Icons.facebook)),
                    SizedBox(width: 10,),
                    IconButton(onPressed:(){
                      launch("tel:0224619494");
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

                height: 50,
                child: RaisedButton(onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (_)=> Booking_Page(name:name)));
                },
                  child: Text("For Booking",style: TextStyle(fontSize: 18),),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
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
}

