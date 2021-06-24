// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Expense _$ExpenseFromJson(Map<String, dynamic> json) {
  return Expense(
    id: json['id'] as int,
    amount: (json['amount'] as num).toDouble(),
    date: json['date'] as String,
    expenseType: json['expenseType'] as String,
  );
}

Map<String, dynamic> _$ExpenseToJson(Expense instance) => <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'date': instance.date,
      'expenseType': instance.expenseType,
    };
