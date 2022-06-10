import 'package:flutter/material.dart';
import 'package:sahi_crop/screens/authenticate/authenticate.dart';
import 'package:sahi_crop/screens/home/home.dart';

// return either authenticate or home depending on user signed in or no
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Authenticate();
  }
}
