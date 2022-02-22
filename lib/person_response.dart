import 'package:json_annotation/json_annotation.dart';

part 'person_response.g.dart';

@JsonSerializable()
class PersonResponse {
  PersonResponse(this.name, this.height, this.mass, this.hairColor,
      this.eyeColor, this.birthYear);

  factory PersonResponse.fromJson(Map<String, dynamic> json) =>
      _$PersonResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PersonResponseToJson(this);

  final String name;
  final String height;
  final String mass;

  @JsonKey(name: 'hair_color')
  final String hairColor;

  @JsonKey(name: 'eye_color')
  final String eyeColor;

  @JsonKey(name: 'birth_year')
  final String birthYear;

  @override
  String toString() {
    return '''{
  name: $name
  height: $height
  mass: $mass
  hairColor: $hairColor
  eyeColor: $eyeColor
  birthYear: $birthYear
}''';
  }
}
