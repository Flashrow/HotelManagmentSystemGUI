import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/popupWithTitle.dart';

class PaymentDialog extends StatelessWidget {
  const PaymentDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupWithTitle(
      title: "Opłać zaliczkę",
      icon: Icons.attach_money,
      button1Text: "cofnij",
      button2Text: "przechodzę",
      content: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          children:[
            Text("Wybierz metodę płatności")
            
          ]
        ),
      ),
    );
  }
}