import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {

  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;
  final String? uid;
  final String? gender;



  UserModel({required this.uid,
    required this.email,
    required this.lastName,
  required  this.firstName,
    required this.password,
   required this.gender,
  });

  Map<String, dynamic> toJson() => {
    "firstName": firstName,
    "email": email,
'lastName':lastName,
    'password':password,
    'uid':uid,
    'gender':gender

  };

  static UserModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return UserModel(
      email: snapshot['email'], lastName: snapshot['lastName'], password: snapshot['password'], firstName: snapshot['firstName'], uid: snapshot['uid'], gender: snapshot['gender'],


    );
  }
}