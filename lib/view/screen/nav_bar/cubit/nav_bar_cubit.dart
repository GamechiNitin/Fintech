
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(const NavBarInitialState(0));

  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    emit(NavBarInitialState(currentIndex));
  }
}
