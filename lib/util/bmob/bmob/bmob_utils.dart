import 'bmob.dart';
import 'table/bmob_installation.dart';
import 'table/bmob_object.dart';
import 'table/bmob_role.dart';
import 'table/bmob_user.dart';

class BmobUtils {
  ///获取BmobObject对象的表名
  static String getTableName(BmobObject object) {
    String tableName;
    if (object is BmobUser) {
      tableName = Bmob.BMOB_TABLE_USER;
    } else if (object is BmobInstallation) {
      tableName = Bmob.BMOB_TABLE_INSTALLATION;
    } else if (object is BmobRole) {
      tableName = Bmob.BMOB_TABLE_TOLE;
    } else {
      tableName = object.runtimeType.toString();
    }
    return tableName;
  }
}
