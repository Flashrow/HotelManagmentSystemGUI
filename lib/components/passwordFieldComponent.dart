import 'package:flutter/material.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({Key? key, this.titleText = "Title", this.hintText = "Hint", this.onChange, this.validator})
      : super(key: key);

  final String titleText;
  final String hintText;
  final void Function(String)? onChange;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    ColorTheme myColors = ColorTheme();
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              titleText,
              style: TextStyle(
                color: myColors.themeData.colorScheme.primary,
                fontSize: 12,
                fontFamily: 'RobotoMono',
              ),
            ),
            TextFormField(
              obscureText: true,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                filled: false,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: myColors.themeData.colorScheme.primary),
                ),
                hintText: hintText,
                contentPadding: EdgeInsets.all(8),
              ),
              validator: validator,
              onChanged: onChange,
            )
          ],
        ),
      ),
    );
  }
}
