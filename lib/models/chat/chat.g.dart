// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$$_ChatFromJson(Map<String, dynamic> json) => _$_Chat(
      id: json['id'] as String,
      users: (json['users'] as List<dynamic>).map((e) => e as String).toList(),
      messages: (json['messages'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            DateTime.parse(k), ChatMessage.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'id': instance.id,
      'users': instance.users,
      'messages':
          instance.messages.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };
