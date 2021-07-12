import 'package:flutter/material.dart';

class KitchenCard extends StatelessWidget {
  const KitchenCard({
    Key? key,
    required this.count,
    required this.title,
    required this.headerColor,
  }) : super(key: key);

  final Color? headerColor;
  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Card(
        elevation: 3,
        color: Colors.white,
        child: Container(
          height: 200,
          width: 270,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 180,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                  color: this.headerColor,
                ),
                child: Center(
                  child: Text(
                    title.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    count.toString(),
                    style: TextStyle(fontSize: 92, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
