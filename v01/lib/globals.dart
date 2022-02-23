import 'package:udemy1/makepack.dart';

late Function sendNote;
late Function requestUserPermission;
HiveQuestion? newQuestion = null;
List<Question> questions = [];
bool notificationsAllowed = false;