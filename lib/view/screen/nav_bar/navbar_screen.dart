import 'package:fintech/utils/import.dart';
import 'package:fintech/view/screen/card_tab/card_screen.dart';
import 'package:fintech/view/screen/favorite_tab/favorite_screen.dart';
import 'package:fintech/view/screen/home_tab/home_screen.dart';
import 'package:fintech/view/screen/nav_bar/cubit/nav_bar_cubit.dart';
import 'package:fintech/view/screen/setting_tab/setting_screen.dart';
import 'package:fintech/view/screen/transfer_tab/transfer_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavBarScreen extends StatelessWidget {
  const NavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: Scaffold(
        body: BlocBuilder<NavBarCubit, NavBarState>(
          builder: (context, state) {
            switch (state.index) {
              case 0:
                return const HomeScreen();
              case 1:
                return const CardScreen();
              case 2:
                return const TransferScreen();
              case 3:
                return const FavoriteScreen();
              case 4:
                return const SettingScreen();
              default:
                return const HomeScreen();
            }
          },
        ),
        bottomNavigationBar: BlocBuilder<NavBarCubit, NavBarState>(
          builder: (context, state) {
            return Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                currentIndex: state.index,
                unselectedFontSize: 0,
                selectedFontSize: 0,
                onTap: (index) {
                  BlocProvider.of<NavBarCubit>(context).changeIndex(index);
                },
                items: const [
                  BottomNavigationBarItem(
                    activeIcon:
                        NotSelectedWidget(AppAssets.homeIcon, selected: true),
                    icon: NotSelectedWidget(AppAssets.homeIcon),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    activeIcon:
                        NotSelectedWidget(AppAssets.cardIcon, selected: true),
                    icon: NotSelectedWidget(AppAssets.cardIcon),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: NotSelectedWidget(AppAssets.transferIcon,
                        selected: true),
                    icon: NotSelectedWidget(AppAssets.transferIcon),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: NotSelectedWidget(AppAssets.favoriteIcon,
                        selected: true),
                    icon: NotSelectedWidget(AppAssets.favoriteIcon),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: NotSelectedWidget(AppAssets.discoveryIcon,
                        selected: true),
                    icon: NotSelectedWidget(AppAssets.discoveryIcon),
                    label: "",
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class NotSelectedWidget extends StatelessWidget {
  const NotSelectedWidget(this.label, {this.selected, super.key});
  final String label;
  final bool? selected;

  @override
  Widget build(BuildContext context) {
    if (selected == true) {
      return Container(
        // height: 57,
        width: 45,
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: kPrimaryColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              label,
              height: 20,
              width: 20,
              color: kBackground,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 4,
              width: 4,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kBackground,
              ),
            ),
          ],
        ),
      );
    } else {
      return Image.asset(
        label,
        height: 20,
        width: 20,
        color: kGrey2Color,
      );
    }
  }
}
