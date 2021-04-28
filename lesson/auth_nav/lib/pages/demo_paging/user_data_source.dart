import 'package:auth_nav/data/model/user.dart';
import 'package:auth_nav/data/repository/api/api.dart';
import 'package:fl_paging/fl_paging.dart' as paging;
import 'package:tuple/tuple.dart';

class UserDataSource extends paging.PageKeyedDataSource<int, User> {

  UserDataSource() {
    isEndList = false;
  }

  @override
  Future<Tuple2<List<User>, int>> loadInitial() async {
    var datas = await Api.getUser2('1');
    return Tuple2(datas, 1);
  }

  @override
  Future<Tuple2<List<User>, int>> loadPageAfter(int params) async {
    var datas = await Api.getUser2(params.toString());
    return Tuple2(datas, params + 1);
  }

}