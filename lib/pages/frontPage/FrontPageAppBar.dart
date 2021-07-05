import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/ApiClient.dart';
import 'package:hotel_management_system/components/outlinedRoundedButton.dart';
import 'package:hotel_management_system/pages/login/loginScreen.dart';
import 'package:hotel_management_system/pages/register/registerScreen.dart';
import 'package:hotel_management_system/utils/whoAmI.dart';
import 'package:provider/provider.dart';

class FrontPageAppBar extends StatefulWidget {
  const FrontPageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  _FrontPageAppBarState createState() => _FrontPageAppBarState();
}

class _FrontPageAppBarState extends State<FrontPageAppBar> {
  signIn(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    ).then((value) {
      setState(() => {});
    });
  }

  signUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterScreen()),
    ).then((value) {
      setState(() => {});
    });
  }

  goToDashboard(BuildContext context, ApiClient apiClient) {
    Navigator.pushNamed(
      context,
      NavigationController.getPath(apiClient.auth.getSingleRole(apiClient.auth.userRoles)),
      arguments: {
        'role': apiClient.auth.userRoles,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ApiClient api = context.watch<ApiClient>();
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
              if (!api.auth.isAuthorized)
                TextButton(
                  onPressed: () => signUp(context),
                  child: Text(
                    "Zarejestruj się".toUpperCase(),
                  ),
                ),
              SizedBox(
                width: 20.0,
              ),
              if (!api.auth.isAuthorized)
                OutlinedRoundedButton(
                  buttonText: "Zaloguj się",
                  onPresesd: () => signIn(context),
                ),
              if (api.auth.isAuthorized)
                OutlinedRoundedButton(
                  buttonText: "Dashboard",
                  onPresesd: () => goToDashboard(context, api),
                )
            ],
          ),
        )
      ],
    );
  }
}
