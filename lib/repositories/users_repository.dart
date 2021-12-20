import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sandbox/models/user/user.dart';

class UsersRepository {
  UsersRepository({
    FirebaseFirestore? firebaseStore,
  }) : _firebaseStore = firebaseStore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firebaseStore;

  /// Returns a collection of [User]'s that can be used for adding documents, getting
  /// document references, and querying for documents to the users collection.
  CollectionReference<User> get usersCollection =>
      _firebaseStore.collection('users').withConverter<User>(
            fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
            toFirestore: (user, _) => user.toJson(),
          );

  /// Returns a document snapshot of a [User] based on the specified [userId].
  Future<DocumentSnapshot<User>> userSnapshot(String userId) async =>
      await _userDocumentReference(userId).get();

  /// Adds a new [User] in the Firebase Firestore in the users collection
  Future<void> addUser(User user) async =>
      await usersCollection.doc(user.id).set(user);

  /// Removes a user from the users collection
  Future<void> removeUser(String userId) async {
    try {
      await _userDocumentReference(userId).delete();
    } catch (e) {}
  }

  /// Updates a [User] in the users collection
  Future<void> updateUser(User user) async {
    final userId = user.id;

    try {
      await _userDocumentReference(userId).update(
        user.toJson(),
      );
    } catch (e) {}
  }

  /// Returns a document reference of a [User] based on the specified [userId].
  DocumentReference<User> _userDocumentReference(String userId) =>
      usersCollection.doc(userId);
}
