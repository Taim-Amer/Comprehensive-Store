import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/data/repositories/user/user_repository.dart';
import 'package:t_store/features/authentication/models/user/user_model.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/network/network_manager.dart';
import 'package:t_store/utils/popups/full_screen_loader.dart';
import 'package:t_store/utils/popups/loaders.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async{
    try{
      TFullScreenLoader.openLoadingDialog("We are processing your information ... ", TImages.productImage1);

      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) return;

      if(!signupFormKey.currentState!.validate()) return;

      if(!privacyPolicy.value){
        TLoaders.warningSnackBar(
          title: "Accept Privacy Policy",
          message: "In order to create account, you must have to read and accept the Privacy Policy & Terms of Use."
        );
        return;
      }

      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          username: username.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: "",
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);
      
      TLoaders.successSnackBar(title: "Congratulations", message: "Your account has been created! Verify email to continue");
      
      Get.to(() => VerifyEmailScreen(email: email.text.trim()));

    }catch(e) {
      TLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }finally {
      TFullScreenLoader.stopLoading();
    }
  }
}