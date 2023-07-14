part of 'nav_bar_cubit.dart';

@immutable
abstract class NavBarState {
  final int index;

  const NavBarState(this.index);
}

class NavBarInitialState extends NavBarState {
  const NavBarInitialState(super.index);
}
