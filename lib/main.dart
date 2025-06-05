import 'package:caply/components/buttons/icon_btn.dart';
import 'package:caply/components/buttons/primary_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Spacer(),
              PrimaryButton(
                onClick: () {
                  print("Hola mundo");
                },
                label: "Soy un Botón!!",
                icon: Icons.add,
              ),
              SizedBox(height: 16),
              IconBtn(onClick: () {}, icon: Icons.more_vert),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
