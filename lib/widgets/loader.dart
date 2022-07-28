import 'package:flutter/material.dart';

Widget get Loader {
  return const Center(
      child: CircularProgressIndicator.adaptive(
          backgroundColor: Color.fromARGB(255, 19, 21, 19)));
}
