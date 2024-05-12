import 'package:brasil_info/features/taxes/domain/entities/tax.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class TaxModel extends TaxEntity {
  const TaxModel(super.name, super.value);

  factory TaxModel.fromJson(Map<String, dynamic> json) =>
      _$TaxModelFromJson(json);
}
