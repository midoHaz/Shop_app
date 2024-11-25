import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/helpers/bloc_observer.dart';
import 'package:shop_app/core/networking/remote/dio_helper.dart';
import 'package:shop_app/core/routing/app_router.dart';
import 'package:shop_app/shop_app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  runApp(ShopApp(
    appRouter: AppRouter(),
  ));
}
