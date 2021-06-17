import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';

import 'clientDataWidget.dart';
import 'clientFoodWidget.dart';
import 'clientStayWidget.dart';
import 'clientTopBarWidget.dart';

class ClientPaymentWidget extends StatefulWidget {
  final String clientName;
  const ClientPaymentWidget({
    Key? key,
    required this.clientName,
  }) : super(key: key);

  @override
  _ClientPaymentWidgetState createState() => _ClientPaymentWidgetState();
}

class _ClientPaymentWidgetState extends State<ClientPaymentWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64, left: 16, right: 32),
      child: Column(
        children: [
          ClientTopBar(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ClientDataWidget(
                      city: 'city',
                      country: 'country',
                      name: widget.clientName,
                      phoneNumber: 'phoneNumber',
                      postCode: 'postCode',
                      streetName: 'streetName',
                      surname: 'surname',
                    ),
                    ClientStayWidget(),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                        child: ClientFoodWidget(
                      breakfastNumber: 5,
                      breakfastPrice: 50,
                      dayNumber: 5,
                      dayPrice: 250,
                      dinnerNumber: 5,
                      dinnerPrice: 50,
                      dinnerSupperNumber: 1,
                      dinnerSupperPrice: 75,
                      supperNumber: 4,
                      supperPrice: 40,
                    )),
                    Expanded(child: Container()),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0, top: 16.0),
                  child: Container(
                      child: FilledRoundedButton(
                    buttonText: "przyjmij opłate",
                    onPresesd: () => {},
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
