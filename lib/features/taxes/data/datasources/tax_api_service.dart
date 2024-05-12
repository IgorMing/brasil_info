import 'package:brasil_info/core/constants/constants.dart';
import 'package:brasil_info/features/taxes/data/models/tax.dart';
import 'package:dio2/dio2.dart';
import 'package:retrofit/retrofit.dart';

part 'tax_api_service.g.dart';

@RestApi(baseUrl: kBaseURL)
abstract class TaxApiService {
  factory TaxApiService(Dio dio) = _TaxApiService;

  @GET('/taxas/v1')
  Future<HttpResponse<List<TaxModel>>> getTaxes();
}
