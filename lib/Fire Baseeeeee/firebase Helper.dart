import 'package:firebase_auth/firebase_auth.dart';

class AuthHelper{
  final FirebaseAuth auth = FirebaseAuth.instance;

  get user => auth.currentUser;

  // signup
 Future<String?> signUP({required String email,required String password})async{
   try{
     await auth.createUserWithEmailAndPassword(email: email, password: password);
     return null;
   }on FirebaseAuthException catch(e){
     return e.message;
   }
 }

   Future<String?> signIn({required String email, required String password}) async{
   try{
     await auth.signInWithEmailAndPassword(email: email, password: password);
     return null;
   }on FirebaseException catch(e){
     return e.message;
   }
  }

  Future<void> signOut() async{
   await auth.signOut();
  }

}
