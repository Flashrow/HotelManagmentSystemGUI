import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';

import 'clientDataWidget.dart';
import 'clientFoodWidget.dart';
import 'clientStayWidget.dart';
import 'clientTopBarWidget.dart';

class ClientPaymentWidget extends StatelessWidget {
  const ClientPaymentWidget({
    Key? key,
  }) : super(key: key);

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
                    ClientDataWidget(),
                    ClientStayWidget(),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(child: ClientFoodWidget()),
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
