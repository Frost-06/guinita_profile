import 'package:guinita_profile/utils/env_endpoints.dart';
import 'package:guinita_profile/utils/network.dart';
import 'package:guinita_profile/model/profile.dart';

class APIGateway {
  final EnvEndpoints envEndpoints = EnvEndpoints();

  Profile profile;

  Future<Profile> asyncGet(int id) async {
    try {
      Network network =
          Network(envEndpoints.getEndpoints('/api/myinfo/' + id.toString()));
      dynamic body = await network.getData();

      profile = Profile.fromJson(body['data']);
    } catch (e) {
      print(e);
    }
    return profile;
  }
}
