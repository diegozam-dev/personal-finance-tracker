import 'package:caply/components/buttons/icon_btn.dart';
import 'package:caply/components/buttons/outline_btn.dart';
import 'package:caply/components/buttons/primary_button.dart';
import 'package:caply/components/buttons/see_all_btn.dart';
import 'package:caply/components/containers/item_list_with_separator.dart';
import 'package:caply/components/headings/h1.dart';
import 'package:caply/components/headings/h2.dart';
import 'package:caply/components/headings/h3.dart';
import 'package:caply/components/transaction/financial_transaction.dart';
import 'package:caply/components/transaction/goal_transaction.dart';
import 'package:caply/models/category_model.dart';
import 'package:caply/models/goal_model.dart';
import 'package:caply/utils/app_accent_colors.dart';
import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/category_types.dart';
import 'package:caply/utils/goal_states.dart';
import 'package:caply/utils/transaction_types.dart';
import 'package:flutter/material.dart';
import 'package:caply/utils/app_icons.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      FinancialTransaction(
        id: 1,
        type: TransactionTypes.expense,
        amount: 100.0,
        category: CategoryModel(
          categoryId: 1,
          name: 'Food',
          icon: appIcons[0]['name'],
          color: appAccentColors[0]['name'],
          type: CategoryTypes.expense,
        ),
        description: 'Lunch at the restaurant',
        date: DateTime.now().subtract(const Duration(days: 1)),
      ),
      FinancialTransaction(
        id: 2,
        type: TransactionTypes.income,
        amount: 200.0,
        category: CategoryModel(
          categoryId: 2,
          name: 'Salary',
          icon: appIcons[1]['name'],
          color: appAccentColors[1]['name'],
          type: CategoryTypes.expense,
        ),
        description: 'Monthly salary',
        date: DateTime.now().subtract(const Duration(days: 7)),
      ),
      GoalTransaction(
        id: 1,
        amount: 50.0,
        goal: GoalModel(
          goalId: 1,
          userId: 1,
          name: 'Vacation',
          goalAmount: 1000.0,
          savedAmount: 500.0,
          imageUrl:
              'https://cdn.prod.website-files.com/654a7a21d047b4f79110837e/6597569753aab5ce1cb322d4_south-beach-miami-florida_HERO_FLBEACH0123-97d4bbd632a7430ea1ac08b30e6ed5d8.jpeg',
          state: GoalStates.inProgress,
        ),
        date: DateTime.now().subtract(const Duration(days: 40)),
      ),
    ];

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Spacer(),
              OutlineBtn(
                onClick: () {},
                label: 'Outline Button',
                icon: Icons.add,
                color: AppColors.accentRed,
              ),
              SizedBox(height: 16),
              SizedBox(height: 16),
              Expanded(child: ItemListWithSeparator(items: items)),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
