import 'package:flutter/material.dart';
import 'package:hotel_management_system/API/ApiClient.dart';
import 'package:hotel_management_system/models/RoomIssue.dart';
import 'package:hotel_management_system/pages/roomService/checkButton.dart';
import 'package:hotel_management_system/utils/colorTheme.dart';
import 'package:provider/provider.dart';

class RoomServiceElement extends StatelessWidget {
  const RoomServiceElement({
    Key? key,
    required this.issue,
    required this.refresh,
  }) : super(key: key);

  final Function() refresh;
  final RoomIssue issue;

  activate(ApiClient api) {
    api.database.staff.startRoomIssue(issue.id);
    refresh();
  }

  resolve(ApiClient api) {
    api.database.staff.resolveRoomIssues(issue.id);
    refresh();
  }

  @override
  Widget build(BuildContext context) {
    ApiClient apiClient = Provider.of<ApiClient>(context);
    ColorTheme myColors = ColorTheme();
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(issue.roomId.toString() + '.'),
              Text(issue.roomIssueStatus),
              Text(issue.description),
            ],
          ),
        ),
        Expanded(child: Container()),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (issue.roomIssueStatus == 'REPORTED')
                CheckButton(
                  text: 'Aktywuj',
                  color: Colors.green,
                  onPresesd: () => activate(apiClient),
                ),
              SizedBox(
                width: 10,
              ),
              if (issue.roomIssueStatus == 'IN_PROGRESS')
                CheckButton(
                  text: 'Zakończ',
                  color: Colors.pink,
                  onPresesd: () => resolve(apiClient),
                )
            ],
          ),
        ),
      ],
    );
  }
}
