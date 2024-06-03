import 'package:practice_home/models/user_model.dart';

class UserController {
  final User _user = User();

  User get user => _user;

  void setUser(
    String? name,
    String? lastname,
    String? phoneNumber,
    String? image,
  ) {
    _user.name = name;
    _user.lastname = lastname;
    _user.phoneNumber = phoneNumber;
    _user.image = image;

    print(_user.name);
  }
}
