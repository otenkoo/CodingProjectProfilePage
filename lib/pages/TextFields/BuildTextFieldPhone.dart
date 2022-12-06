import 'package:edit_profile_project/pages/edit_components/PhoneChange.dart';
import 'package:flutter/material.dart';

import '../edit_components/NameChange.dart';

Widget buildTextFieldPhone(
    String labelText, String placeholder, BuildContext context) {
  const changeIcon = Icon(Icons.arrow_forward_ios);
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
    child: TextField(
      readOnly: true,
      controller: TextEditingController(text: placeholder),
      maxLines: null,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: changeIcon,
          onPressed: () {
            //send to change route
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PhoneChange()),
            );
          },
        ),
        contentPadding: const EdgeInsets.only(top: 10, bottom: 17),
        labelText: labelText,
        labelStyle: const TextStyle(
          fontSize: 18,
        ),
        //
      ),
    ),
  );
}
