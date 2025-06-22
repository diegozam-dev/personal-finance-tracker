import 'package:caply/components/buttons/icon_btn.dart';
import 'package:caply/components/buttons/primary_button.dart';
import 'package:caply/components/buttons/see_all_btn.dart';
import 'package:caply/components/headings/h1.dart';
import 'package:caply/components/headings/h2.dart';
import 'package:caply/components/headings/h3.dart';
import 'package:caply/components/transaction/financial_transaction.dart';
import 'package:caply/schemes/category_scheme.dart';
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
                createdAt: DateTime.now(),
                category: CategoryScheme(
                  id: 2,
                  type: 'Income',
                  name: 'Tecnópolis',
                  iconCodePoint: 57400,
                  hexColor: 0xFF9C2BAD,
                ),
              ),
              SizedBox(height: 16),
              IconBtn(
                onClick: () {},
                icon: IconData(iconId, fontFamily: 'MaterialIcons'),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
