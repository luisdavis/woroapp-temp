import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class WoroAuthUser {
  WoroAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<WoroAuthUser> woroAuthUserSubject =
    BehaviorSubject.seeded(WoroAuthUser(loggedIn: false));
Stream<WoroAuthUser> woroAuthUserStream() =>
    woroAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
