import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

// Widget Loading Aplikasi
Widget wAppLoading() {
  return Center(child: Platform.isIOS ? CupertinoActivityIndicator() : CircularProgressIndicator(),
  );
}
