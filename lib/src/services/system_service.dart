import 'package:chopper/chopper.dart';
import 'package:shopware6_client/shopware6_client.dart';

part 'system_service.chopper.dart';

@ChopperApi()
abstract class SystemService extends ChopperService {
  static SystemService create([ChopperClient? client]) =>
      _$SystemService(client);

  @Post(path: '/currency', optionalBody: true)
  Future<Response<CriteriaResponse<Currency>>> fetchCurrencies(
    @Body() CriteriaInput? criteriaInput,
  );

  @Post(path: '/language', optionalBody: true)
  Future<Response<CriteriaResponse<Language>>> fetchLanguages(
    @Body() CriteriaInput? criteriaInput,
  );

  @Post(path: '/country', optionalBody: true)
  Future<Response<CriteriaResponse<Country>>> fetchCountries(
    @Body() CriteriaInput? criteriaInput,
  );
}
