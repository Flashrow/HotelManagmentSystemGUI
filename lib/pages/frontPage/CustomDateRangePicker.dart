import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/ApiClient.dart';
import 'package:hotel_management_system/models/DatePicker/DateRangePickerModel.dart';
import 'package:hotel_management_system/models/Room/Room.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

/// My app class to display the date range picker
class CustomDateRangePicker extends StatefulWidget {
  Room? room;

  @override
  CustomDateRangePickerState createState() => CustomDateRangePickerState();
}

/// State for MyApp
class CustomDateRangePickerState extends State<CustomDateRangePicker> {
  DateRangePickerModel dates = new DateRangePickerModel();
  double _costPerDay = 250.0;
  double _wholeCost = 7 * 250.0;
  Function? confirmButton;

  @override
  void initState() {
    dates.blackoutDays = [
      DateTime.now().add(const Duration(days: 1)),
      DateTime.now().add(const Duration(days: 3)),
    ];

    super.initState();
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        dates.startDate = args.value.startDate;
        dates.endDate = args.value.endDate ?? args.value.startDate;
        _wholeCost = dates.days * _costPerDay;

        validateDateRange();
      }
    });
  }

  validateDateRange() {
    if (dates.isRangeContainsBlackoutDays()) {
      _showAlertDateDialog();
      confirmButton = null;
    } else {
      confirmButton = confirm;
    }

    if (dates.days == 0) {
      confirmButton = null;
    }
  }

  confirm() {
    print("Confirm pressed");
  }

  goBack(BuildContext context) {
    print("GoBack pressed");
    Navigator.pop(context);
  }

  Future<void> _showAlertDateDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Błąd'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Zakres dat nie może zawierać nieaktywnych terminów'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    Future<List<DateTime>?> getBlackoutDates() async {
      return await context.read<ApiClient>().database.getBlackoutDates(this.widget.room!.id);
    }
    
    return FutureBuilder(
        future: getBlackoutDates(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {

       if (snapshot.connectionState == ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());
            else if (snapshot.hasData) {
              dates.blackoutDays = snapshot.data;
            } else if (snapshot.hasError)
              return Text("ERROR: ${snapshot.error}");
            else
              return Text('None');

      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.white,
              elevation: 2.0,
              child: Container(
                padding: const EdgeInsets.all(20),
                width: 350,
                height: 600,
                child: buildLeftBar(context),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Card(
              color: Colors.white,
              elevation: 2.0,
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 600,
                width: 800,
                child: buildDataPicker(context),
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget buildDataPicker(BuildContext context) {
    return SfDateRangePicker(
      enableMultiView: true,
      rangeSelectionColor: Theme.of(context).primaryColor.withOpacity(.5),
      startRangeSelectionColor: Theme.of(context).primaryColor,
      endRangeSelectionColor: Theme.of(context).primaryColor,
      todayHighlightColor: Theme.of(context).colorScheme.secondaryVariant,
      onSelectionChanged: _onSelectionChanged,
      minDate: DateTime.now(),
      selectionColor: Theme.of(context).primaryColor.withOpacity(.3),
      monthCellStyle: DateRangePickerMonthCellStyle(
          blackoutDateTextStyle: const TextStyle(
              color: Colors.red, decoration: TextDecoration.lineThrough)),
      monthViewSettings: DateRangePickerMonthViewSettings(
          firstDayOfWeek: 1, blackoutDates: dates.blackoutDays),
      selectionMode: DateRangePickerSelectionMode.range,
    );
  }

  Widget buildLeftBar(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: Text("Początek pobytu"),
                trailing: Text(dates.startDateString),
              ),
              ListTile(
                leading: Text("Koniec pobytu"),
                trailing: Text(dates.endDateString),
              ),
              ListTile(
                leading: Text("Ilość nocy"),
                trailing: Text(dates.days.toString()),
              ),
              ListTile(
                leading: Text("Cena za dobę"),
                trailing: Text("${_costPerDay}zł"),
              ),
              ListTile(
                leading: Text("Koszt"),
                trailing: Text("${_wholeCost}zł"),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () => goBack(context),
              child: Text("powrót".toUpperCase()),
            ),
            SizedBox(
              width: 20.0,
            ),
            TextButton(
              onPressed: confirmButton as void Function()?,
              child: Text("Zatwierdź".toUpperCase()),
            ),
          ],
        )
      ],
    );
  }
}
