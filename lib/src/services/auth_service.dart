import 'package:chopper/chopper.dart';
import 'package:shopware6_client/src/models/models.dart';
import 'package:shopware6_client/src/responses/responses.dart';

import '../requests/requests.dart';

part 'auth_service.chopper.dart';

@ChopperApi()
abstract class AuthService extends ChopperService {
  static AuthService create([ChopperClient? client]) => _$AuthService(client);

  @Post(path: '/account/login')
  Future<Response<ContextTokenResponse>> login(
      @Body() LoginRequest loginRequest);

  @Post(path: '/account/logout')
  Future<Response<ContextTokenResponse>> logout();

  @Post(path: '/account/register')
  Future<Response<Customer>> register(
    @Body() SignupRequest signupRequest,
  );

  @Post(path: '/account/customer')
  Future<Response<Customer>> getCustomer();
}
