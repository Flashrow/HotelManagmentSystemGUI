import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/popupWithTitle.dart';

class CancelReservationDialog extends StatelessWidget {
  const CancelReservationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupWithTitle(
      title: "Czy na pewno chcesz anulować rezerwację?",
      icon: Icons.info,
      button1Text: "Cofnij",
      button2Text: "Anuluj rezerwację",
      content: Padding(
        padding: const EdgeInsets.fromLTRB(36, 36, 36, 8),
        child: SizedBox(
          width: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            'W przypadku anulowania rezerwacji w terminie przynajmniej 48h przed rezerwowaną datą zaliczka zostanie zwrócona. Dla rezerwacji anulowanej z powodu gościa poniżej 48h przed rezerwowaną datą jest przewidywany jedynie zwrot kosztów pobytu w przypadku jeżeli został on opłacony,'),
                    TextSpan(
                        text:
                            ' w takim przypadku kwota zaliczki nie zostanie zwrócona.',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Potwierdź odwołanie rezerwacji",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
