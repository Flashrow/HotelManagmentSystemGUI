import 'package:json_annotation/json_annotation.dart';

part 'KitchenDishesDTO.g.dart';

@JsonSerializable()
class KitchenDishesDTO {
  final int standard;
  final int vegetarian;
  final int vegan;
  final List<String> clientFoodPreferences;

  KitchenDishesDTO({
    required this.standard,
    required this.vegan,
    required this.vegetarian,
    required this.clientFoodPreferences,
  });

  factory KitchenDishesDTO.fromJson(Map<String, dynamic> json) => _$KitchenDishesDTOFromJson(json);
  Map<String, dynamic> toJson() => _$KitchenDishesDTOToJson(this);
}
