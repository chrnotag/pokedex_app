import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/core/constants/colors/main_colors_light.dart';
import 'package:pokedex_app/core/constants/navigation_routes.dart';
import 'package:pokedex_app/core/extensions/theme_extensions/theme_extension.dart';
import 'package:pokedex_app/state_management/auth/login/login_bloc.dart';
import 'package:pokedex_app/state_management/auth/login/login_state.dart';
import 'package:pokedex_app/viewmodel/auth/login/login_email_viewmodel.dart';
import 'package:pokedex_app/widgets/main_extended_button_blue.dart';
import 'package:pokedex_app/widgets/textfield_custom.dart';

class LoginEmailView extends StatefulWidget {
  const LoginEmailView({super.key});

  @override
  State<LoginEmailView> createState() => _LoginEmailViewState();
}

class _LoginEmailViewState extends State<LoginEmailView> {
  @override
  Widget build(BuildContext context) {
    final viewmodel = Modular.get<LoginEmailViewmodel>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrar"),
      ),
      body: BlocProvider(
        create: (context) => Modular.get<LoginBloc>(),
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) => viewmodel.emitStates(context, state),
          builder: (context, state) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Center(
              child: Form(
                key: viewmodel.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 45.h),
                      child: Column(
                        children: [
                          Text(
                            "Bem vindo de volta!",
                            style: context.textTheme.displaySmall,
                          ),
                          Text(
                            "Preencha os dados",
                            style: context.textTheme.displayMedium,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.h, top: 24.h),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "E-mail",
                                    style: context.textTheme.bodySmall!
                                        .copyWith(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextfieldCustom(
                            hintText: "E-mail",
                            controller: viewmodel.controllerEmail,
                            keyboardType: TextInputType.emailAddress,
                            validator: viewmodel.validatorEmail,
                            onTap: () => viewmodel.cleanErrorState(
                                BlocProvider.of<LoginBloc>(context)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.h, top: 16.h),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Senha",
                                    style: context.textTheme.bodySmall!
                                        .copyWith(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextfieldCustom(
                            hintText: "Senha",
                            controller: viewmodel.controllerPassword,
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            validator: viewmodel.validatorPassword,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 24.h),
                            child: TextButton(
                                onPressed: () => Modular.to
                                    .pushNamed(NavigationRoutes.forgetPassword),
                                child: Text(
                                  "Esqueceu sua senha?",
                                  style: context.textTheme.bodySmall!.copyWith(
                                      color: MainColorsLight.primaryBlue,
                                      fontWeight: FontWeight.w900),
                                )),
                          ),
                        ],
                      ),
                    ),
                    MainExtendedButtonBlue(
                        text: "Entrar",
                        onPressed: () => viewmodel.callLoginEvent(
                            BlocProvider.of<LoginBloc>(context))),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
