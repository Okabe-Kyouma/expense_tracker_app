import 'package:expense_tracker/expense_model.dart';
import 'package:expense_tracker/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  ExpensesList({super.key, required this.expenses});

  final List<Expensemodel> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: expenses.length,itemBuilder: (context,index) => ExpenseItem(expenses[index]) );
  }
}
