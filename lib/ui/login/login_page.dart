import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base_flutter/app/app_global_define.dart';
import 'package:base_flutter/app/authentication_cubit.dart';
import 'package:base_flutter/app/authentication_state.dart';
import 'package:base_flutter/di/di.dart';
import 'package:base_flutter/extension/context_extension.dart';
import 'package:base_flutter/extension/size_extension.dart';
import 'package:base_flutter/theme/text_theme.dart';
import 'package:base_flutter/ui/login/login_cubit.dart';
import 'package:base_flutter/ui/login/login_state.dart';
import 'package:base_flutter/util/toast_util.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginCubit = di.get<LoginCubit>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      bloc: _loginCubit,
      listener: (context, state) {
        _handleState(state);
      },
      child: _buildContent(),
    );
  }

  _handleState(LoginState state) {
    switch (state) {
      case LoginInitialState():
        break;
      case LoginLoadingState():
        break;
      case LoginSuccessState():
        di.get<ToastUtil>().showToast('Login success');
        context.read<AuthenticationCubit>().setAuthenticationState(AuthenticatedState());
        break;
      case LoginFailedState(errorMessage: final message):
        di.get<ToastUtil>().showToast(message, textColor: context.theme.primaryColor);
        break;
    }
  }

  Widget _buildContent() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.primaryColor,
        title: Text(language.login, style: textTitleAppBar.bold),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(language.login),
            SizedBox(height: 40.hs),
            TextField(controller: _emailController),
            SizedBox(height: 20.hs),
            TextField(controller: _passwordController),
            SizedBox(height: 40.hs),
            InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.ws, vertical: 5.hs),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.rs), color: context.theme.bannerColor),
                child: Text(language.login, style: textTitle.semibold),
              ),
              onTap: () {
                _loginCubit.login(_emailController.text, _passwordController.text);
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
