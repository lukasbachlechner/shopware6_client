import 'package:chopper/chopper.dart';
import 'package:shopware6_client/src/models/context/current_context.dart';
import 'package:shopware6_client/src/requests/context_patch_request.dart';
import 'package:shopware6_client/src/responses/responses.dart';

part 'context_service.chopper.dart';

@ChopperApi()
abstract class ContextService extends ChopperService {
  static ContextService create([ChopperClient? client]) =>
      _$ContextService(client);

  @Get(path: '/context')
  Future<Response<CurrentContext>> fetchCurrentContext();

  @Patch(path: '/context')
  Future<Response<ContextPatchResponse>> modifyCurrentContext(
    @Body() ContextPatchRequest contextPatchRequest,
  );
}
