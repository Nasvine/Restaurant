import 'package:get/get.dart';
import 'acceuil_item_model.dart';

class AcceuilModel {
  RxList<AcceuilItemModel> acceuilItemList =
      RxList.generate(5, (index) => AcceuilItemModel());
}
