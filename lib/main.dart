import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc_demo/app.dart';
import 'package:flutter_bloc_demo/bloc_observer.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const CounterApp());
}
