import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  static String id = "main_view";

  const MainView({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Sistema de Soporte TI",
          ),

        ),
      body: const Center (
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Card(
                elevation: 5,
                borderOnForeground: true,
                
              ),
            ),

            ],
        ),
      )
    );
  }
}