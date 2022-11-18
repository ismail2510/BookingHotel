import 'dart:developer';
import 'package:booking_hotels/home.dart';
import 'package:booking_hotels/login.dart';
import 'package:booking_hotels/open.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../model/user_model.dart';
import '../database_local/cacheHelper.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  late Rx<User?> _user;
  String? name;

  User get user => _user.value!;

  var displayName = '';
  FirebaseAuth auth = FirebaseAuth.instance;
  var isSignedIn = false.obs;

  User? get userProfile => auth.currentUser;
  bool enrolled = false;
  String? emailq;

  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.authStateChanges());
    ever(_user, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => Login());
    } else {
      Get.offAll(() => Home());
    }
  }


  void registerUser(String firstName, String email, String password,
       String lastName,String gender) async {
    try {
      // save out user to our ath and firebase firestore
      UserCredential cred = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // String downloadUrl = await _uploadToStorage(image);
      UserModel user = UserModel(
          firstName: firstName,
          email: email,
          uid: cred.user!.uid, lastName: lastName, password: password, gender: gender,
      );

      await FirebaseFirestore.instance
          .collection('users')
          .doc(cred.user!.uid)
          .set(user.toJson());

      _saveUser(user);
    } catch (e) {
      Get.snackbar(
        'Error Creating Account',
        e.toString(),
      );
    }
  }

  _saveUser(UserModel user) async {
    log("email: ${user.uid}");

    CacheHelper.put(key: 'uid', value: user.uid!);
    CacheHelper.put(key: 'lastname', value: user.lastName!);
    CacheHelper.put(key: 'email', value: user.email!);
    CacheHelper.put(key: 'firstname', value: user.firstName!);
    CacheHelper.put(key: 'gander', value: user.gender!);

  }

  void loginUser(String email, String password) async {
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((value) => getUser(email: email));
      } else {
        Get.snackbar(
          'Error Logging in',
          'Please enter all the fields',
        );
      }
    } catch (e) {
      Get.snackbar(
        'Error Loggin gin',
        e.toString(),
      );
    }
  }

  Future<void> getUser({required String email}) async {
    await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email)
        .get()
        .then((value) {
      for (var result in value.docs) {
        UserModel user = UserModel(
          uid: result.id,
          email: result.get('email'),
          firstName: result.get('firstName'),
          lastName: result.get('lastName'), password: result.get('password'), gender:result.get('gender') ,

        );

        print(result.id);
        _saveUser(user);
      }
    });
  }


  void signout() async {
    try {
      await auth.signOut();
      isSignedIn.value = false;
      CacheHelper.clearData();

      update();
      Get.offAll(() => Firstpage());
    } catch (e) {
      Get.snackbar('Error occured!', e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white,
          colorText: Colors.white);
    }
  }
}
//extension StringExtension on String

// // to capitalize first letter of a Sting
extension StringExtension on String {
  String capitalizeString() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}