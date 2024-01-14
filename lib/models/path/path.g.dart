// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PathCircuit _$PathCircuitFromJson(Map<String, dynamic> json) => PathCircuit(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      position: json['position'] as String,
      urlImage: json['urlImage'] as String,
    );

Map<String, dynamic> _$PathCircuitToJson(PathCircuit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'position': instance.position,
      'urlImage': instance.urlImage,
    };
