import 'package:firebase/home_page.dart';
import 'package:firebase/pages/otp_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class authWithNumber extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController number = TextEditingController();
  TextEditingController otp = TextEditingController();
  String verifyId = "";
  RxString userMobilerNumber = "".obs;

  User? users = FirebaseAuth.instance.currentUser;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUserData();
  }

  void getUserData() {
    // print(users!.displayName);
    // print(users!.phoneNumber);
    // print(users!.email);
    if (users != null) {
      userMobilerNumber.value = users!.phoneNumber.toString();
    }
  }

  void logoutUser() async {
    await auth.signOut();
    getUserData();
  }

  void singUpWithNumber() async {
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: '+91${number.text}',
        verificationCompleted: (PhoneAuthCredential credential) {
          print(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e);
        },
        codeSent: (String verificationId, int? resendToken) {
          verifyId = verificationId;
          Get.snackbar(
              "OTP Sended", "Otp sended on your mobiler number ${number.text}");
          Get.to(OTPPage());
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (ex) {
      Get.snackbar("$ex", "");
      print(ex);
    }
  }

  void verifyMobilerNumber() async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verifyId,
        smsCode: otp.text,
      );
      await auth.signInWithCredential(credential);
      Get.snackbar("OTP Verifed", "Welcome to Flutter app");
      Get.offAll(HomePage());
    } catch (ex) {
      print(ex);
    }
  }
}
