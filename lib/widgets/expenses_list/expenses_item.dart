import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/model/expense.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expense, {key}) : super(key: key);

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Text(expense.title, style: Theme.of(context).textTheme.titleLarge,),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
           const  SizedBox(width: 10,),
            Text('\$${expense.amount.toStringAsFixed(2)}'),
           const Spacer(),
            Row(children: [
                Icon(categoryIcons[expense.category]),
              const SizedBox(width: 8,),
              Text(expense.dateFormatter),
              const SizedBox(width: 10,),
            ],),
          ],
        ),
      ]),
    );
  }
}
