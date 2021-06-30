// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'KitchenDishesDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KitchenDishesDTO _$KitchenDishesDTOFromJson(Map<String, dynamic> json) {
  return KitchenDishesDTO(
    standard: json['standard'] as int,
    vegan: json['vegan'] as int,
    vegetarian: json['vegetarian'] as int,
    clientFoodPreferences: (json['clientFoodPreferences'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$KitchenDishesDTOToJson(KitchenDishesDTO instance) =>
    <String, dynamic>{
      'standard': instance.standard,
      'vegetarian': instance.vegetarian,
      'vegan': instance.vegan,
      'clientFoodPreferences': instance.clientFoodPreferences,
    };
