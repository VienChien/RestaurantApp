import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class FirAuth {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void signUp(String email, String pass, String name, String phone,
      Function onSuccess) {
    _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: pass)
        .then((user) {
      _createUser(user.user!.uid, name, phone, onSuccess);
      print(user);
    }).catchError((err) {});
  }

  _createUser(String userId, String name, String phone, Function onSuccess) {
    var user = {"name": name, "phone": phone};
    // ignore: deprecated_member_use
    var ref = FirebaseDatabase.instance.reference().child("user");
    ref.child(userId).set(user).then((user) {
      //
      onSuccess();
    }).catchError((err) {});
  }
}
