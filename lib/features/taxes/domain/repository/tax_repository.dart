import 'package:brasil_info/core/resources/data_state.dart';
import 'package:brasil_info/features/taxes/domain/entities/tax.dart';

abstract class TaxRepository {
  Future<DataState<List<Tax>>> getTaxes();
}
