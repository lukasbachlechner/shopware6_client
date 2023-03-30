import 'package:chopper/chopper.dart';

import '../requests/requests.dart';

part 'auth_service.chopper.dart';

@ChopperApi()
abstract class AuthService extends ChopperService {
  static AuthService create([ChopperClient? client]) => _$AuthService(client);

  @Post(path: '/account/login')
  Future<Response<dynamic>> login(@Body() LoginRequest loginRequest);

  @Post(path: '/account/logout')
  Future<Response<void>> logout();
}
