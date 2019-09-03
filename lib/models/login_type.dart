import 'package:sports_hub/users/user/user_page.dart';
import 'package:sports_hub/users/mentor/mentor_page.dart';
import 'package:sports_hub/users/admin/admin_page.dart';

enum LoginType {
  User,
  Mentor,
  Admin
}

Map<LoginType, String> loginRouteNameMap = {
  LoginType.User: UserPage.routeName,
  LoginType.Mentor: MentorPage.routeName,
  LoginType.Admin: AdminPage.routeName,
};