enum AppRoutes {
  // Auth
  signIn(path: '/sign-in'),
  signUp(path: '/sign-up'),
  emailConfirmation(path: '/email-confirmation'),

  // Settings
  settings(path: '/settings'),
  debug(path: '/debug');

  static const defaultRoute = signIn;

  final String path;

  const AppRoutes({required this.path});

  String get lastPathSegment => path.split('/').last;

  bool get requiresAuth {
    switch (this) {
      case signIn:
      case signUp:
        return false;
      default:
        return true;
    }
  }

  bool get isDebug {
    switch (this) {
      case debug:
        return true;
      default:
        return false;
    }
  }

  static final pathMap = Map.fromEntries(
    values.map((e) => MapEntry(e.path, e)),
  );
}
