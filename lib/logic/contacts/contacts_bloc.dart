import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sandbox/models/user/user.dart';
import 'package:sandbox/repositories/authentication_repository.dart';
import 'package:sandbox/repositories/users_repository.dart';

part 'contacts_bloc.freezed.dart';
part 'contacts_event.dart';
part 'contacts_state.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  ContactsBloc({
    required usersRepository,
    required authenticationRepository,
  })  : _usersRepository = usersRepository,
        _authenticationRepository = authenticationRepository,
        super(ContactsState.initial()) {
    on<_FetchContacts>(_fetchContacts);
  }

  final UsersRepository _usersRepository;
  final AuthenticationRepository _authenticationRepository;

  void _fetchContacts(_FetchContacts event, Emitter<ContactsState> emit) async {
    emit(
      ContactsState.inProgress(),
    );
    try {
      final users = await _usersRepository.usersCollection.get();
      await Future.delayed(const Duration(seconds: 1));
      emit(ContactsState.success(_withoutCurrentUser(users.docs)));
    } catch (e) {
      emit(ContactsState.error());
    }
  }

  List<QueryDocumentSnapshot<User>> _withoutCurrentUser(
          List<QueryDocumentSnapshot<User>> users) =>
      users
          .where(
            (element) => element.id != _authenticationRepository.currentUser.id,
          )
          .toList();
}
