import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/popupWithTitle.dart';
import 'package:hotel_management_system/models/DatePicker/DateRangePickerModel.dart';
import 'package:hotel_management_system/pages/frontPage/CustomDateRangePicker.dart';

class ChangeReservationDateDialog extends StatelessWidget {
  const ChangeReservationDateDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupWithTitle(
      buttons: false,
      title: "Zmień datę rezerwacji",
      icon: Icons.calendar_today,
      content: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          children: [
            SizedBox(width: 700),
            CustomDateRangePicker(),
          ],
        ),
      ),
    );
  }
}
