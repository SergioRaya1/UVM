import 'package:flutter/widgets.dart';
import 'package:sistema_ti/ui/views/dashboard.dart';
import 'package:sistema_ti/ui/views/login_form.dart';

import '../ui/views/main_view.dart';

var customRoutes=<String, WidgetBuilder> {
  LoginForm.id: (_) => const LoginForm(),
  //LoginView.id: (_) =>  const LoginView(),
  MainView.id: (_) => const MainView(),
  Dashboard.id: (_) => Dashboard(),
};