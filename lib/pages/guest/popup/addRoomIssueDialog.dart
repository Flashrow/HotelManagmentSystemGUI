import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/ApiClient.dart';
import 'package:hotel_management_system/components/popupWithTitle.dart';
import 'package:hotel_management_system/models/DTO/AddRoomIssueDTO.dart';
import 'package:provider/provider.dart';

class AddRoomIssueDialog extends StatefulWidget {
  const AddRoomIssueDialog({Key? key, required this.roomId, required this.clientId}) : super(key: key);
  final int roomId;
  final int clientId;

  @override
  _AddRoomIssueDialogState createState() => _AddRoomIssueDialogState();
}

class _AddRoomIssueDialogState extends State<AddRoomIssueDialog> {
  int radioGroup = 1;
  String description = "";

  createRoomIssue(BuildContext context) {
    AddRoomIssueDTO addRoomIssueDTO = AddRoomIssueDTO(
      description: description,
      roomId: widget.roomId,
      roomIssueType: getRoomIssueType(),
      clientsId: widget.clientId,
    );

    context.read<ApiClient>().auth.addRoomIssue(addRoomIssueDTO).then((value) {
      print("RoomIssue created");
      Navigator.of(context).pop();
    }).catchError((onError) => print(onError.toString()));
  }

  String getRoomIssueType() {
    switch (radioGroup) {
      case 0:
        return "AMENITIES_MISSING";
      case 1:
        return "DIRTY";
      case 2:
        return "EQUIPMENT_BROKEN";
      case 3:
        return "EQUIPMENT_MISSING ";
      default:
        return "DIRTY";
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupWithTitle(
      title: "Zgłoś problem/szkodę",
      icon: Icons.bug_report_outlined,
      button1Text: "cofnij",
      button2Text: "dodaj",
      onButton1Pressed: () => Navigator.of(context).pop(),
      onButton2Pressed: () => createRoomIssue(context),
      content: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 700),
            Text("Rodzaj szkody"),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: radioGroup,
                              onChanged: (T) {
                                setState(() {
                                  radioGroup = T as int;
                                });
                              },
                            ),
                            Text("Brak udogodnień"),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: radioGroup,
                              onChanged: (T) {
                                setState(() {
                                  radioGroup = T as int;
                                });
                              },
                            ),
                            Text("Brudno"),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: radioGroup,
                              onChanged: (T) {
                                setState(() {
                                  radioGroup = T as int;
                                });
                              },
                            ),
                            Text("Zepsute wyposażenie"),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 4,
                              groupValue: radioGroup,
                              onChanged: (T) {
                                setState(() {
                                  radioGroup = T as int;
                                });
                              },
                            ),
                            Text("Brakujące wyposażenie"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      maxLines: 8,
                      decoration: InputDecoration.collapsed(hintText: "Enter your text here"),
                      onChanged: (value) => setState(() => description = value),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 40, 16),
              child: SizedBox(
                width: double.infinity,
                child: Text("Zapisz", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
