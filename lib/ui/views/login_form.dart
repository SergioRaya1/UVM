import 'package:flutter/material.dart';
import 'package:sistema_ti/ui/colors/AppColors.dart';
import 'package:sistema_ti/ui/inputs/custom_textfield.dart';
import 'package:sistema_ti/ui/views/dashboard.dart';


class LoginForm extends StatelessWidget {
  static String id = "login_form";

  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login"),
      ),
      body:  SingleChildScrollView(
        child: Center(
          child: Column(

            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const SizedBox(height: 70),
              Image.asset("assets/images/help_desk.png", width: 150, height: 150,),
              const SizedBox(height: 40.0),
              const Text("Sistema de Soporte TI",
              style: TextStyle(
                fontSize: 30,
                color: AppColors.darkBlue,
              ),),

              const SizedBox(height: 30,),
              CustomTextField(
                  controller: emailController,
                  hintText: "Ingrese su email",
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Image.asset("assets/images/email.png", fit: BoxFit.scaleDown,),


              ),
              const SizedBox(height: 30,),
              CustomTextField(
                controller: passwordController,
                hintText: "Ingrese su password",
                prefixIcon: Image.asset("assets/images/password.png", fit: BoxFit.scaleDown,),
                suffixIcon: Image.asset("assets/images/eyeoff.png", fit: BoxFit.scaleDown,),


              ),
              const SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, Dashboard.id);
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Continuar"),

              ),

            ],
          ),
        ),
      ),
    );
  }
}

