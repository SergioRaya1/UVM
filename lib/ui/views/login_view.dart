import 'package:flutter/material.dart';
import 'package:sistema_ti/ui/inputs/textfield_login.dart';

import 'main_view.dart';

class LoginView extends StatelessWidget {
  static String id = "login_view";

  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hola mundo"),
            SizedBox(height: size.height * 0.05,),
            TextFieldLogin(
              onChanged: (String value){

              },
            ),

            const SizedBox(height: 20,),

            TextFieldLogin(
              onChanged: (String value) {

              },
            ),

            const SizedBox(
              height: 40,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, MainView.id);
            }, child: const Text("Continuar"),
            )

          ],
        ),
      ),
    );
  }
}
