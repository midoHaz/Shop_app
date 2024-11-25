import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helpers/spacing.dart';
import 'package:shop_app/core/theming/styles.dart';
import 'package:shop_app/core/widgets/app_text_button.dart';
import 'package:shop_app/core/widgets/app_text_form_field.dart';
import 'package:shop_app/features/login/logic/login_cubit.dart';
import 'package:shop_app/features/login/logic/login_states.dart';
import 'package:shop_app/features/login/ui/screens/widgets/dont_have_account_text.dart';
import 'package:shop_app/features/login/ui/screens/widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back",
                          style: TextStyles.font24SemiBoldLightBlue
                              .copyWith(fontSize: 26.sp),
                        ),
                        verticalSpace(8),
                        Text(
                          "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                          style: TextStyles.font14Regulargrey,
                        ),
                        verticalSpace(36),
                        Form(
                            key: formKey,
                            child: Column(children: [
                              AppTextFormField(
                                hintText: 'Email',
                                controller: emailController,
                                valid: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a valid email';
                                  }
                                  return null; // No error
                                },
                              ),
                              verticalSpace(18),
                              AppTextFormField(
                                controller: passwordController,
                                valid: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Password is too short';
                                  }
                                  return null; // No error
                                },
                                hintText: 'Password',
                                isObsecure: LoginCubit.get(context).isObsecure,
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    LoginCubit.get(context)
                                        .changePasswordVisibility();
                                  },
                                  child: Icon(LoginCubit.get(context).suffix),
                                ),
                              ),
                              verticalSpace(24),
                              Align(
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: Text('Forgot password?',
                                      style:
                                          TextStyles.font13RegularLightBlue)),
                              verticalSpace(40),
                              ConditionalBuilder(
                                condition: state is! LoginLoadingState,
                                builder: (context) => AppTextButton(
                                  buttonText: 'Login',
                                  textStyle: TextStyles.font16SemiBoldWhite,
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      LoginCubit.get(context).userLogin(
                                          email: emailController.text,
                                          password: passwordController.text);
                                    }
                                  },
                                ),
                                fallback: (context) => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                              verticalSpace(16),
                              const TermsAndConditionsText(),
                              verticalSpace(60),
                              const DontHaveAccountText(),
                            ])),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
