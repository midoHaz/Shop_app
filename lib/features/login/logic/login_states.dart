abstract class LoginStates {}

class initialLoginState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {}

class LoginFailureState extends LoginStates {
  final String error;
  LoginFailureState(this.error);
}

class ChangePasswordVisibilityState extends LoginStates {}
