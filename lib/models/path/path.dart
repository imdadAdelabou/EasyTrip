import 'package:json_annotation/json_annotation.dart';

part 'path.g.dart';

@JsonSerializable()
class PathCircuit {
  final String id;
  final String title;
  final String description;
  final String position;
  final String urlImage;

  const PathCircuit({
    required this.id,
    required this.title,
    required this.description,
    required this.position,
    required this.urlImage,
  });

  factory PathCircuit.fromJson(Map<String, dynamic> json) =>
      _$PathCircuitFromJson(json);
  Map<String, dynamic> toJson() => _$PathCircuitToJson(this);
}
