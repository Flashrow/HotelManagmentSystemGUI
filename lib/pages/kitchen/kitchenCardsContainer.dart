import 'package:flutter/material.dart';

import 'kitchenCard.dart';

class KitchenCardsContainer extends StatelessWidget {
  const KitchenCardsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
      child: Wrap(
        spacing: 20.0,
        children: [
          KitchenCard(
            title: "Wszysthie",
            count: 40,
          ),
          KitchenCard(
            title: "Standart",
            count: 40,
          ),
          KitchenCard(
            title: "Wegetariańskie",
            count: 40,
          ),
          KitchenCard(
            title: "Wegańskie",
            count: 40,
          ),
          KitchenCard(
            title: "Specjalne",
            count: 40,
          ),
        ],
      ),
    );
  }
}