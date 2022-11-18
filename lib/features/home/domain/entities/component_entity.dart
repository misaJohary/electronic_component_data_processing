import 'package:equatable/equatable.dart';

class ComponentEntity extends Equatable {
  const ComponentEntity({
    required this.id,
    required this.name,
    required this.type,
    required this.price,
    required this.description,
    required this.link,
    required this.distributor,
  });
  final int id;
  final String? name;
  final String? type;
  final String? price;
  final String? description;
  final String? link;
  final String? distributor;

  @override
  List<Object?> get props =>
      [name, type, price, description, link, distributor];
}
