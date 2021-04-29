import 'package:auth_nav/data/model/book_model.dart';
import 'package:auth_nav/data/repository/repo/book_repository.dart';
import 'package:fl_paging/fl_paging.dart' as paging;
import 'package:tuple/tuple.dart';

class BookDataSource extends paging.PageKeyedDataSource<int, HydraMember> {
  int lastPage = 0;

  BookDataSource() {
    isEndList = false;
  }

  @override
  Future<Tuple2<List<HydraMember>, int>> loadInitial() async {
    var data = await BookRepository.bookList("1");
    lastPage = data.item2;
    return Tuple2(data.item1, 1);
  }

  @override
  Future<Tuple2<List<HydraMember>, int>> loadPageAfter(int params) async {
    if (params + 1 <= lastPage) {
      var data = await BookRepository.bookList(params.toString());
      print("Loadpage after" + data.item2.toString());
      return Tuple2(data.item1, params + 1);
    } else {
      isEndList = true;
      return Tuple2([], params);
    }
  }
}
