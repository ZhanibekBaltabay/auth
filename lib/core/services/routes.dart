import 'package:auth/core/core.dart';
import 'package:auth/src/src.dart';

final router = {
  '/': (context) => const FirebaseStream(),
  '/home': (context) => const Control(),
  '/sign_in': (context) => const SignIn(),
  '/sign_up': (context) => const SignUp(),
  '/verify_email': (context) => const VerifyEmail(),
  '/welcome': (context) => const Welcome(),
  '/stats': (context) => const Stats(),
  '/notifications': (context) => const Notifications(),
  '/settings': (context) => const Settings(),
  '/share': (context) => const Share(),
};
