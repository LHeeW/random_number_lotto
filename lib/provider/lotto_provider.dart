import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:random_number_lotto/model/lotto_model.dart';
import 'package:http/http.dart' as http;

class LottoProvider extends ChangeNotifier {
  Lotto lotto = Lotto();

  void fetch({int num = 1102}) async {
    String url =
        'https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo=$num';
    final response = await http.get(Uri.parse(url));
    lotto = Lotto.fromJson(jsonDecode(response.body));
    notifyListeners();
  }
}
