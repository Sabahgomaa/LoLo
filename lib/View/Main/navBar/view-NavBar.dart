import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lola/View/Main/navBar/Cubit/states.dart';

import 'Cubit/cubit.dart';

class ViewNavBar extends StatelessWidget {
  const ViewNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeLayoutCubit(),
      child: BlocConsumer<HomeLayoutCubit, HomeLayoutStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = HomeLayoutCubit.of(context);
            return Scaffold(
              body: cubit.bottomScreens[cubit.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                onTap: (index) {
                  cubit.changeBottom(index);
                },
                currentIndex: cubit.currentIndex,
                backgroundColor: Colors.deepPurple,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.white,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_filled,
                      ),
                      label: 'الرئيسيه'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite), label: 'مفضل'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: 'اعدادات'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.car_rental_outlined), label: 'طلب'),
                ],
              ),
            );
          }),
    );
  }
}
