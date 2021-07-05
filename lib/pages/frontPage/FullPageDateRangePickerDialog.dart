import 'package:flutter/material.dart';
import 'package:hotel_management_system/models/Room/Room.dart';
import 'package:hotel_management_system/pages/frontPage/CustomDateRangePicker.dart';

class FullPageDataRangePickerDialog extends StatelessWidget {
  final Room? room;
  const FullPageDataRangePickerDialog({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wybierz datę pobytu"),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: CustomDateRangePicker(room: this.room, context: context,),
      ),
    );
  }
}
