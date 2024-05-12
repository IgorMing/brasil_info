import 'dart:io';

import 'package:brasil_info/core/resources/data_state.dart';
import 'package:brasil_info/features/taxes/data/datasources/tax_api_service.dart';
import 'package:brasil_info/features/taxes/data/models/tax.dart';
import 'package:brasil_info/features/taxes/domain/repository/tax_repository.dart';
import 'package:dio2/dio2.dart';

class TaxRepositoryImpl implements TaxRepository {
  final TaxApiService _taxApiService;

  TaxRepositoryImpl(this._taxApiService);

  @override
  Future<DataState<List<TaxModel>>> getTaxes() async {
    try {
      final httpResponse = await _taxApiService.getTaxes();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSucess(httpResponse.data);
      } else {
        return DataFailed(
          DioError(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response.data,
            type: DioErrorType.RESPONSE,
          ),
        );
      }
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
