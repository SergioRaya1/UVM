import 'package:flutter/material.dart';
import 'package:sistema_ti/routes/routes.dart';
import 'package:sistema_ti/ui/colors/AppColors.dart';
import 'package:sistema_ti/ui/views/login_form.dart';


void main() {
  runApp(const MyApp());
}


//const Color darkBlue = Color.fromARGB(255, 24, 57, 130);
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white,),
          color: AppColors.darkindigo,
          foregroundColor: Colors.white,
        ),
      ),

      debugShowCheckedModeBanner: false,



      initialRoute: LoginForm.id,
      routes: customRoutes,
    );
  }
}