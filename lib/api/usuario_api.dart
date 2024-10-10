import 'package:dart_basico/modelo/Usuario.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'usuario_api.g.dart';
@RestApi(baseUrl: "https://script.googleusercontent.com")
abstract class UsuarioApi {
  factory UsuarioApi(Dio dio, {String baseUrl}) = _UsuarioApi;
  static UsuarioApi create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return UsuarioApi(dio);
  }
  @GET("/macros/echo?user_content_key=bBtAQPgAJKN9PkItj03W7XzviFcf-qgKcT2RSSQFTBAX_zsKGe8qfMjeHhi2ePMi0STguceps81OlYO6L7HX0WmXLMv5Gd2lm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnEZcbUQkwbusgDQQ3Mt_92cX9wsJi8A7iwIz__zUFcsofLaP_dZqBrgFdpu4JVg-uNremeslhs12DXsYHhjFYooDFe9RUYq8wA&lib=MzxA4Yo3wn-hllwVyoXgREXxXveXX26VG") //davidmpx@upeu.edu.pe //D123456
      Future<List<User>> listar();
}
