import 'package:flutter/material.dart';
import 'package:random_number_lotto/ui/recommendNumber/recommend_number_ui.dart';
import 'package:random_number_lotto/ui/roundSearch/round_search_main_ui.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text("Lotto"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //회차 검색
            const RoundSearchUI(),
            //경계선
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: Colors.grey),
                ),
              ),
            ),
            //번호 추천
            const RecommendNumberUI(),
          ],
        ),
      ),
    );
  }
}
