import 'dart:convert';

import 'package:get/get_connect/http/src/status/http_status.dart';

import '../../core/exception/http_error_exception.dart';
import '../../core/services/http_client.dart';
import '../constant/app/http_url.dart';
import '../constant/enum/general_enum.dart';
import '../constant/enum/loading_status_enum.dart';
import '../models/general/base_http_model.dart';
import '../models/general/error_model.dart';
import '../models/header/session_header_model.dart';
import '../models/other/pairs_list_item.dart';

/// Tüm moldüllerde ile kullanılan Http işlemleri burada yapılmakta
///
class General extends SessionHeaderModel {
  General()
      : super(
          token:
              //Get.find<SessionService>().getUserToken() ??
              '',
        );
/* 
  ///[HttpUrl.getExhangeInfo] üzerinde bulunan Assets Lists ve Info bilgileri getirir.
  Future<BaseHttpModel<PairsListItemModel>> getExchangeInfo() async {
    try {
      var response = await HttpClient().request(HttpMethod.get, HttpUrl.getExhangeInfo, headerParam: createHeader());
      if (response!.statusCode == HttpStatus.ok) {
        final responseModel = await ExchangeInfoModel().jsonParser(response.body);

        return BaseHttpModel<ExchangeInfoModel>(status: BaseModelStatus.Ok, data: responseModel);
      } else if (response.statusCode == HttpStatus.notFound) {
        return BaseHttpModel(status: BaseModelStatus.NotFound);
      } else {
        ErrorModel responseModel = ErrorModel.fromJson(jsonDecode(response.body));

        return BaseHttpModel(status: BaseModelStatus.Error, message: responseModel.message);
      }
    } on AppException catch (e) {
      return BaseHttpModel(status: BaseModelStatus.Error, message: e.toString());
    } catch (e) {
      return BaseHttpModel(status: BaseModelStatus.Error);
    }
  } */
}
