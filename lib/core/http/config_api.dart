import 'endpoints.dart';

class ConfigApi {
  ConfigApi();

  String get url {
    return Endpoints.baseURl;
  }

  Map<String, String> get headers {

    return headersWithoutToken ;
  }

  Map<String, String> get headersWithoutToken {
    return {
      "x-api-key": "live_XXOPU5TPJTvERUz2qSjTt1iYz5VBNV3LsNBEs99hQUb3rhkUgnr0Nvnq79lHYFyG",

    };
  }
}
