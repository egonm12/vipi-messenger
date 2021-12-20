part of 'contacts_bloc.dart';

@freezed
class ContactsState with _$ContactsState {
  const factory ContactsState.initial() = _ContactsStateInitial;
  const factory ContactsState.inProgress() = _ContactsStateInProgress;
  const factory ContactsState.success(List<QueryDocumentSnapshot<User>> users) =
      _ContactsStateSuccess;
  const factory ContactsState.error() = _ContactsStateError;
}
