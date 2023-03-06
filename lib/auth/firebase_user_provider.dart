import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DashboardFirebaseUser {
  DashboardFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DashboardFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DashboardFirebaseUser> dashboardFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DashboardFirebaseUser>(
      (user) {
        currentUser = DashboardFirebaseUser(user);
        return currentUser!;
      },
    );
