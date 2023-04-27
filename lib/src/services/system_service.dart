import 'package:chopper/chopper.dart';
import 'package:shopware6_client/shopware6_client.dart';

part 'system_service.chopper.dart';

@ChopperApi()
abstract class SystemService extends ChopperService {
  static SystemService create([ChopperClient? client]) =>
      _$SystemService(client);

  @Post(path: '/currency', optionalBody: true)
  Future<Response<List<Currency>>> fetchCurrencies(
    @Body() CriteriaInput? criteriaInput,
  );

  @Post(path: '/language', optionalBody: true)
  Future<Response<LanguageCriteriaResponse>> fetchLanguages(
    @Body() CriteriaInput? criteriaInput,
  );

  @Post(path: '/country', optionalBody: true)
  Future<Response<CountryCriteriaResponse>> fetchCountries(
    @Body() CriteriaInput? criteriaInput,
  );

  @Post(path: '/salutation', optionalBody: true)
  Future<Response<SalutationCriteriaResponse>> fetchSalutations(
    @Body() CriteriaInput? criteriaInput,
  );

  @Post(path: '/shipping-method', optionalBody: true)
  Future<Response<ShippingMethodCriteriaResponse>> fetchShippingMethods(
    @Body() CriteriaInput? criteriaInput, {
    @Query('onlyAvailable') bool onlyAvailable = true,
  });
}
