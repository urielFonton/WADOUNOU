import 'package:digitalis_restaurant_app/core/model/User/User.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  late User currentUser = User();

  setUserBasicInfos(User user) {
    currentUser.fullname = user.fullname;
    currentUser.email = user.email;
    currentUser.password = user.password;
    notifyListeners();
  }
}