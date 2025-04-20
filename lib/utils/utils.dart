
import 'package:flutter/material.dart';

showSnackBar (BuildContext context, String message){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      margin:  const EdgeInsets.all(15),
      behavior:  SnackBarBehavior.floating,
      
      content: Text(message)
    )
  );}