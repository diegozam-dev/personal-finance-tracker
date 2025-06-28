import 'package:caply/components/buttons/icon_btn.dart';
import 'package:caply/components/buttons/primary_button.dart';
import 'package:caply/components/buttons/see_all_btn.dart';
import 'package:caply/components/headings/h1.dart';
import 'package:caply/components/headings/h2.dart';
import 'package:caply/components/headings/h3.dart';
import 'package:caply/components/transaction/financial_transaction.dart';
import 'package:caply/components/transaction/goal_transaction.dart';
import 'package:caply/models/category_model.dart';
import 'package:caply/models/goal_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    int iconId = Icons.access_alarm.codePoint;

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Spacer(),
              SizedBox(height: 16),
              FinancialTransaction(
                id: 5,
                amount: 500,
                type: 'Income',
                description: 'Pago por servicios prestados',
                date: DateTime.now(),
                category: CategoryModel(
                  categoryId: 2,
                  type: 'Income',
                  name: 'Tecnópolis',
                  icon: '',
                  color: '',
                ),
              ),
              SizedBox(height: 16),
              GoalTransaction(
                id: 5,
                amount: 50,
                type: 'Goal',
                date: DateTime.now(),
                goal: GoalModel(
                  goalId: 1,
                  userId: 1,
                  name: 'PC Gamer',
                  goalAmount: 800,
                  savedAmount: 200,
                  state: 'in progress',
                  imageUrl:
                      'https://www.bestcell.com.ec/img/cotiza-pc-gamer-oficina.webp',
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
