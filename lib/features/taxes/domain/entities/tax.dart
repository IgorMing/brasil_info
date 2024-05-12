import 'package:equatable/equatable.dart';

class TaxEntity extends Equatable {
  final String name;
  final String value;

  const TaxEntity(this.name, this.value);

  @override
  List<Object?> get props => [name, value];
}
