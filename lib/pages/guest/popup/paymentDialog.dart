import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/popupWithTitle.dart';

class PaymentDialog extends StatefulWidget {
  const PaymentDialog({Key? key}) : super(key: key);

  @override
  _PaymentDialogState createState() => _PaymentDialogState();
}

class _PaymentDialogState extends State<PaymentDialog> {
  int radioGroup = 1;

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 700),
            Text("Wybierz metodę płatności"),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: radioGroup,
                        onChanged: (T) {
                          setState(() {
                            radioGroup = T as int;
                          });
                        },
                      ),
                      Text("Przelewy24"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: radioGroup,
                        onChanged: (T) {
                          setState(() {
                            radioGroup = T as int;
                          });
                        },
                      ),
                      Text("PayU"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 3,
                        groupValue: radioGroup,
                        onChanged: (T) {
                          setState(() {
                            radioGroup = T as int;
                          });
                        },
                      ),
                      Text("VISA"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 4,
                        groupValue: radioGroup,
                        onChanged: (T) {
                          setState(() {
                            radioGroup = T as int;
                          });
                        },
                      ),
                      Text("Dotpay"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 40, 16),
              child: SizedBox(
                width: double.infinity,
                child: Text("Przejdź do płatności",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
