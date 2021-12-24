import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sandbox/models/chat/chat.dart';
import 'package:sandbox/repositories/authentication_repository.dart';

class ChatRepository {
  ChatRepository({
    FirebaseFirestore? firebaseStore,
    required AuthenticationRepository authenticationRepository,
  })  : _firebaseStore = firebaseStore ?? FirebaseFirestore.instance,
        _authenticationRepository = authenticationRepository;

  final FirebaseFirestore _firebaseStore;
  final AuthenticationRepository _authenticationRepository;

  /// Returns a collection of [Chat]'s that can be used for adding documents, getting
  /// document references, and querying for documents to the users collection.
  CollectionReference<Chat> get chats =>
      _firebaseStore.collection('chats').withConverter<Chat>(
            fromFirestore: (snapshot, _) => Chat.fromJson(snapshot.data()!),
            toFirestore: (chat, _) => chat.toJson(),
          );

  /// Returns a document snapshot of a [Chat] based on the specified [chatId].
  Future<DocumentSnapshot<Chat>> chatSnapshot(String chatId) async =>
      await _chatDocumentReference(chatId).get();

  Future<DocumentSnapshot<Chat>> readChat(String chatId) async =>
      await _chatDocumentReference(chatId).get();

  Future<List<QueryDocumentSnapshot<dynamic>>?> chatsFromCurrentUser() async {
    final currentUser = _authenticationRepository.currentUser;

    try {
      final _chats = await chats.get();

      return _chats.docs
          .where(
            (_chat) =>
                _chat.data().isPrivateChat &&
                _chat.data().users.contains(currentUser.id),
          )
          .toList();
    } catch (e) {
      print(e);
    }
  }

  /// Adds a new [Chat] in the Firebase Firestore in the chats collection
  Future<void> createChat(Chat chat) async =>
      await _chatDocumentReference(chat.id).set(chat);

  /// Returns a document reference of a [Chat] based on the specified [chatId].
  DocumentReference<Chat> _chatDocumentReference(String chatId) =>
      chats.doc(chatId);
}
