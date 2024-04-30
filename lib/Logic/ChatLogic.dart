import 'package:get_storage/get_storage.dart';
import 'package:jobbay/models/Users.dart';

User getSender(List<User> users) {
  var loggedUser = GetStorage().read("userId");
  var sender = users.firstWhere((user) => user.id != loggedUser);
  return sender;
}
