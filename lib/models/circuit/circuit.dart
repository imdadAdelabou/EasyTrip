import 'package:easy_trip/models/path/path.dart';

class Circuit {
  final String title;
  final List<String> covers;
  final List<PathCircuit> paths;
  final String description;
  final int price;

  const Circuit({
    required this.title,
    required this.covers,
    required this.description,
    required this.price,
    required this.paths,
  });
}
