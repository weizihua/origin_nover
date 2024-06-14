import 'dart:async';

import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:origin_novel/database/app_database.dart';
import 'package:origin_novel/database/models/models.dart';

import '../../../generated/assets.dart';
import 'state.dart';

class BookSearchLogic extends GetxController {
  final BookSearchState state = BookSearchState();
  final Isar _isar = AppDatabase.isarInstance;

  /// 关键词搜索
  Future<void> search(String keyword) async {
    state.bookInfoList.add(
      const BookInfo(
        id: 1,
        name: '万相之王',
        author: '天蚕土豆',
        cover: Assets.testWxzw,
        bookSourceId: 1,
      ),
    );
    update();
  }
}
