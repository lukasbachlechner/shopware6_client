// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$SystemService extends SystemService {
  _$SystemService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SystemService;

  @override
  Future<Response<List<Currency>>> fetchCurrencies(
      CriteriaInput? criteriaInput) {
    final Uri $url = Uri.parse('/currency');
    final $body = criteriaInput;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<Currency>, Currency>($request);
  }

  @override
  Future<Response<LanguageCriteriaResponse>> fetchLanguages(
      CriteriaInput? criteriaInput) {
    final Uri $url = Uri.parse('/language');
    final $body = criteriaInput;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<LanguageCriteriaResponse, LanguageCriteriaResponse>($request);
  }

  @override
  Future<Response<CountryCriteriaResponse>> fetchCountries(
      CriteriaInput? criteriaInput) {
    final Uri $url = Uri.parse('/country');
    final $body = criteriaInput;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<CountryCriteriaResponse, CountryCriteriaResponse>($request);
  }

  @override
  Future<Response<SalutationCriteriaResponse>> fetchSalutations(
      CriteriaInput? criteriaInput) {
    final Uri $url = Uri.parse('/salutation');
    final $body = criteriaInput;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<SalutationCriteriaResponse, SalutationCriteriaResponse>($request);
  }

  @override
  Future<Response<ShippingMethodCriteriaResponse>> fetchShippingMethods(
    CriteriaInput? criteriaInput, {
    bool onlyAvailable = true,
  }) {
    final Uri $url = Uri.parse('/shipping-method');
    final Map<String, dynamic> $params = <String, dynamic>{
      'onlyAvailable': onlyAvailable
    };
    final $body = criteriaInput;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<ShippingMethodCriteriaResponse,
        ShippingMethodCriteriaResponse>($request);
  }
}
