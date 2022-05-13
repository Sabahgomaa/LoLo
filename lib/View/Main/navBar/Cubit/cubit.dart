import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lola/View/Main/navBar/Cubit/states.dart';
import '../../Home/home_view.dart';
import '../../Screens/Favorite/favorites.dart';
import '../../Screens/Order/view-order.dart';
import '../../Screens/Setting/settings.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutStates> {
  HomeLayoutCubit() : super(HomeLayoutInit());

  static HomeLayoutCubit of(context) => BlocProvider.of(context);
  int currentIndex = 0;

  List<Widget> bottomScreens = [
    const HomeView(),
    const ViewFavorite(),
    const ViewSetting(),
    const ViewOrder(),
  ];
  void changeBottom(int index) {
    currentIndex = index;
    emit(HomeLayoutBottomNavState());
  }


  // bool isCurrentIndex(int value)=> currentIndex==value;
}
