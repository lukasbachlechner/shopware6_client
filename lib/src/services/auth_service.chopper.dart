// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$AuthService extends AuthService {
  _$AuthService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthService;

  @override
  Future<Response<ContextTokenResponse>> login(LoginRequest loginRequest) {
    final Uri $url = Uri.parse('/account/login');
    final $body = loginRequest;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ContextTokenResponse, ContextTokenResponse>($request);
  }

  @override
  Future<Response<ContextTokenResponse>> logout() {
    final Uri $url = Uri.parse('/account/logout');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<ContextTokenResponse, ContextTokenResponse>($request);
  }

  @override
  Future<Response<Customer>> register(SignupRequest signupRequest) {
    final Uri $url = Uri.parse('/account/register');
    final $body = signupRequest;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Customer, Customer>($request);
  }

  @override
  Future<Response<Customer>> getCustomer() {
    final Uri $url = Uri.parse('/account/customer');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<Customer, Customer>($request);
  }
}
