part of '../../../logic/authentication/authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.appUserChanged(User user) = _AppUserChanged;
}
