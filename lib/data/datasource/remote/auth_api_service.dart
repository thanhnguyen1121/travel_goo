

import 'package:flutter_application/data/model/authentication_dto.dart';
import 'package:flutter_application/data/model/profile_dto.dart';

import 'base_api_service.dart';

class AuthApiService extends BaseApiService {
  Future<AuthenticationDto> login(String userName, String passWord) async {
    return AuthenticationDto('abc', 'def');
  }

  Future<ProfileDto> profile() async {
    return ProfileDto('abc');
  }

  Future logout() async {}
}
