import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jpnews/screens/cart.dart';
import 'package:jpnews/screens/favourite.dart';
import 'package:jpnews/screens/login.dart';
import 'package:jpnews/bottombar.dart';

import 'package:flutter/cupertino.dart';

Widget userCart() {
  User user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    return Cart();
  } else {
    return Login();
  }
}
