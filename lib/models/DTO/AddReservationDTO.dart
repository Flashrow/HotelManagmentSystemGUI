import 'package:hotel_management_system/models/DTO/AddFoodPreferenceDTO.dart';
import 'package:json_annotation/json_annotation.dart';

part 'AddReservationDTO.g.dart';

@JsonSerializable()
class AddReservationDTO {
  final String comment;
  final int roomId;
  final String startDate;
  final String endDate;
  final List<AddFoodPreferenceDTO> foodPreferences;

  AddReservationDTO({
    required this.comment,
    required this.roomId,
    required this.startDate,
    required this.endDate,
    required this.foodPreferences,
  });

  factory AddReservationDTO.fromJson(Map<String, dynamic> json) =>
      _$AddReservationDTOFromJson(json);
  Map<String, dynamic> toJson() => _$AddReservationDTOToJson(this);
}
