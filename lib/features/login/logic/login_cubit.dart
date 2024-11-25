import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/networking/end_points.dart';
import 'package:shop_app/core/networking/remote/dio_helper.dart';
import 'package:shop_app/features/login/logic/login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(initialLoginState());
  static LoginCubit get(context) => BlocProvider.of(context);

  void userLogin({required String email, required String password}) {
    emit(LoginLoadingState());
    DioHelper.postData(
        url: login,
        data: {'email': email, 'password': password, '': ''}).then((value) {
      emit(LoginSuccessState());
    }).catchError((error) {
      emit(LoginFailureState(error.toString()));
    });
  }

  IconData suffix = Icons.visibility;
  bool isObsecure = true;

  void changePasswordVisibility() {
    isObsecure = !isObsecure;
    suffix = isObsecure ? Icons.visibility : Icons.visibility_off;
    emit(ChangePasswordVisibilityState());
  }
}
