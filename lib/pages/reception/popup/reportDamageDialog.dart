import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/popupWithTitle.dart';

class ReportDamageDialog extends StatelessWidget {
  const ReportDamageDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupWithTitle(
      title: "Zgłoś szkodę",
      icon: Icons.broken_image,
      button1Text: "Cofnij",
      button2Text: "Potwierdzam",
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 700),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Row(
              children: [
                Text("Bużyńska Anna",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 16),
                Text(
                  "Pokój 105",
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 16, 36, 16),
            child: TextField(
              maxLines: 6,
              decoration: new InputDecoration(
                hintText: "Opis",
                enabledBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      new BorderSide(color: Theme.of(context).primaryColor),
                ),
                focusedBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 36, 16),
            child: SizedBox(
              width: double.infinity,
              child: Text("Potwierdź zgłoszenie szkody",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }
}
