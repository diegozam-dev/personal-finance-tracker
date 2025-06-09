import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: Row(
            children: [
              Row(
                children: [
                  Column(
                    children: [Text("Shopping"), Text("New brand mobile")],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
