import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:wheater_app/config/constants/constants.dart';
import 'package:wheater_app/config/constants/dimens.dart';
import 'package:wheater_app/session/shared_preferences.dart';

part 'api_client.g.dart';

final UserPreferences prefs = UserPreferences();

@RestApi(baseUrl: Constants.kBaseAddress)
abstract class ApiClient {
  factory ApiClient(Dio dio) {
    dio.options = BaseOptions(
      receiveTimeout: Dimens.timeoutDuration,
      connectTimeout: Dimens.timeoutDuration,
    );
    return _ApiClient(dio);
  }

/* --- Endpoints --- */
}
