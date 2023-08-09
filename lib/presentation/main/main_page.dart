import 'package:block_stm_1/presentation/category/category_page.dart';
import 'package:block_stm_1/presentation/home/home_page.dart';
import 'package:block_stm_1/presentation/main/bloc/main_bloc.dart';
import 'package:block_stm_1/presentation/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<MainBloc, MainState>(
    builder: (_, state) => Scaffold(
      body: IndexedStack(
        index: state.bottomMenu.index,
        children: const [
          HomePage(),
          CategoryPage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          context
              .read<MainBloc>()
              .add(SetBottomMenuEvent(menu: BottomMenu.values[index]));
        },
        currentIndex: state.bottomMenu.index,
        items: [
          _navigationBarItem(
            label: "Home",
            icon: Icons.home,
            activeIcon: Icons.home,
          ),
          _navigationBarItem(
            label: 'Category',
            icon: Icons.category,
            activeIcon: Icons.category,
          ),
          _navigationBarItem(
            label: 'Profile',
            icon: Icons.person,
            activeIcon: Icons.person,
          ),
        ],
      ),
    ),
  );

  BottomNavigationBarItem _navigationBarItem({
    Widget? widget,
    required String label,
    IconData? icon,
    required IconData activeIcon,
  }) =>
      BottomNavigationBarItem(
        icon: widget ?? Icon(icon),
        activeIcon: widget ?? Icon(activeIcon),
        label: '',
        tooltip: label,
      );
}
