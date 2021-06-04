import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/filledRoundedButton.dart';

import 'editClientDataWidget.dart';
import 'editClientFoodWidget.dart';
import 'editClientStayWidget.dart';
import 'editClientTopBarWidget.dart';

class EditClientWidget extends StatelessWidget {
  const EditClientWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64, left: 16, right: 32),
      child: Column(
        children: [
          EditClientTopBar(),
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
                    EditClientDataWidget(),
                    EditClientStayWidget(),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(child: EditClientFoodWidget()),
                    Expanded(child: Container()),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0, top: 16.0),
                  child: Container(
                      child: FilledRoundedButton(
                    buttonText: "Zapisz zmiany",
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
