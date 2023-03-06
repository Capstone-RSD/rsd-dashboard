import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Dashboard2FirebaseUser {
  Dashboard2FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Dashboard2FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Dashboard2FirebaseUser> dashboard2FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Dashboard2FirebaseUser>(
      (user) {
        currentUser = Dashboard2FirebaseUser(user);
        return currentUser!;
      },
    );
