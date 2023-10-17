import 'package:easy_trip/utils/constant.dart';
import 'package:flutter/material.dart';

class UserRoleChoice {
  final Color color;
  final String title;
  final String description;
  final String urlImage;
  final TypeUser userType;
  final String nextPath;

  UserRoleChoice({
    required this.title,
    required this.description,
    required this.urlImage,
    required this.color,
    required this.userType,
    required this.nextPath,
  });
}
