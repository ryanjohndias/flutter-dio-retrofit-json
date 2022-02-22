// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonResponse _$PersonResponseFromJson(Map<String, dynamic> json) =>
    PersonResponse(
      json['name'] as String,
      json['height'] as String,
      json['mass'] as String,
      json['hair_color'] as String,
      json['eye_color'] as String,
      json['birth_year'] as String,
    );

Map<String, dynamic> _$PersonResponseToJson(PersonResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'height': instance.height,
      'mass': instance.mass,
      'hair_color': instance.hairColor,
      'eye_color': instance.eyeColor,
      'birth_year': instance.birthYear,
    };
