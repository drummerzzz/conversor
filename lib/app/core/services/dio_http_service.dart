import 'package:conversion_money/app/core/interfaces/http_client_interface.dart';
import 'package:conversion_money/app/core/shared/contants.dart';
import 'package:dio/dio.dart';

class HttpClienteDio implements IHttpClient {
  final Dio client = Dio(BaseOptions(baseUrl: Consts.baseUrl));

  @override
  Future get(String url) async {
    var response = await client.get(url);
    return response.data;
  }
}
