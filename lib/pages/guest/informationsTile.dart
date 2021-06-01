import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/IconText.dart';
import 'package:hotel_management_system/components/basicContainerShadow.dart';
import 'package:hotel_management_system/pages/guest/tileTitleBar.dart';

class InformationsTile extends StatelessWidget {
  const InformationsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasicContainerShadow(
      height: 750,
      width: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: TileTitleBar(
              icon: Icons.info,
              title: "Informacje",
            ),
          ),
          informationImage(),
          wifiInformation(),
          attractionsMap(),
        ],
      ),
    );
  }

  Widget informationImage() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 260,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: Text(
                "Pensjonat Zmitac to urokliwe miejsce, położone w samym centrum zielonych terenów Gór Rezystorowych. Nasi goście chwalą okoliczne trasy spacerowe, które zagwarantują odpoczynek w kojącej leśnej atmosferze",
                textAlign: TextAlign.left,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: Image(
              image: AssetImage(
                "images/forest.jpg",
              ),
              height: 185,
            ),
          )
        ],
      ),
    );
  }

  Widget wifiInformation() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 56, 0),
      child: Column(
        children: [
          IconText(
            icon: Icons.wifi,
            text: "Internet",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 260,
                    child: Text(
                      "W pensjonacie dostępna jest darmowa sieć WiFi, można się z nią połączyć skanując kod QR lub korzystając z nazwy i hasła:",
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Nazwa: ZmitacWIFI\nHasło: abcdefghijk",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Image(
                image: AssetImage(
                  "images/qr_placeholder.jpg",
                ),
                height: 200,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget attractionsMap() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: IconText(
            icon: Icons.pin_drop,
            text: "Atrakcje",
          ),
        ),
        Container(
          height: 200,
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage(
                "images/attractions_map.png",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
