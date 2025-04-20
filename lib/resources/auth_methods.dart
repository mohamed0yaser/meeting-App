import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meeting_application/utils/utils.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Stream<User?> get user => _auth.authStateChanges();

  Future<bool> signInWithGoogle(BuildContext context)async{
    bool isSignedIn = false;
    try{
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential userCredential = await _auth.signInWithCredential(credential);
      User? user = userCredential.user;
      if (user != null){
        if (userCredential.additionalUserInfo!.isNewUser){
          await _firestore.collection('users').doc(user.uid).set({
            'username': user.displayName,
            'email': user.email,
            'profilePic': user.photoURL,
            'uid': user.uid,
          });
          }
      }
      isSignedIn = true;
    }on FirebaseAuthException catch(e){
      showSnackBar(context, e.message!);
      isSignedIn=false;
    }
    return isSignedIn;
  }
}