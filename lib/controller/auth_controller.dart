import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AuthWithEmailPassword extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rx<User?> user = Rx<User?>(null);
  User? users = FirebaseAuth.instance.currentUser;
  @override
  void onInit() {
    super.onInit();
    user.bindStream(_auth.authStateChanges());
  }

  void updateDetail() async {
    await users?.updateDisplayName("Nitish kumar");
    await users?.updateEmail("Nitishr833@gmail.com");
    await users?.updatePassword("Nitish kumar");
  }

  void displayUserDetails() async {
    print(users!.displayName);
    print(users!.email);
    print(users!.phoneNumber);
  }

  void signupWithEmail() async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: "admin@gmail.com", password: "Admin123");
      Get.snackbar("Accound Created", "Welcome");
    } catch (ex) {
      Get.snackbar("Something Wrong", "$ex");
    }
  }

  void loginWithEmail() async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: "admin@gmail.com", password: "Admin123");
      Get.snackbar("Accound Logined", "Welcome");
      print(user.value!.email);
      print(user.value!.displayName);
    } catch (ex) {
      Get.snackbar("Something Wrong", "$ex");
    }
  }

  void logOut() async {
    try {
      await _auth.signOut();
      Get.snackbar("Accound LogOut", "Welcome");
    } catch (ex) {
      Get.snackbar("Something Wrong", "$ex");
    }
  }
}
