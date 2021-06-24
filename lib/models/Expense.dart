import 'package:json_annotation/json_annotation.dart';

part 'Expense.g.dart';

@JsonSerializable()
class Expense {
  final int id;
  final double amount;
  final String date;
  final String expenseType;

  Expense({required this.id, required this.amount, required this.date, required this.expenseType});

  factory Expense.fromJson(Map<String, dynamic> json) => _$ExpenseFromJson(json);
  Map<String, dynamic> toJson() => _$ExpenseToJson(this);
}
