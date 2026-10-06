import 'package:chat_app/core/consts/app_consts.dart';
import 'package:chat_app/features/auth/presentation/screens/login_screen.dart';
import 'package:chat_app/features/auth/presentation/screens/signup_screen.dart';
import 'package:chat_app/features/chat/presentation/screens/chat_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppConsts.loginPath,
        builder: ((context, state) => const LoginScreen()),
      ),
      GoRoute(
        path: AppConsts.signupPath,
        builder: ((context, state) => const SignUpScreen()),
      ),
      //ChatScreen
      GoRoute(
        path: AppConsts.chatPath,
        builder: ((context, state) => const ChatScreen()),
      ),
    ],
  );
}
