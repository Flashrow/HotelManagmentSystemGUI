import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/outlinedRoundedButton.dart';

class FrontPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FrontPageAppBar({
    Key? key,
  }) : super(key: key);

  signIn() {
    print("SignIn clicked");
  }

  signUp() {
    print("SignUp clicked");
  }

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 50,
          ),
          child: ButtonBar(
            children: [
              TextButton(
                onPressed: signUp,
                child: Text(
                  "Zarejestruj się".toUpperCase(),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              OutlinedRoundedButton(
                buttonText: "Zaloguj się",
                onPresesd: signIn,
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(83.0);
}
