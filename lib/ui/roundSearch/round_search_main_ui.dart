import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_number_lotto/provider/lotto_provider.dart';
import 'package:random_number_lotto/ui/roundSearch/round_input_ui.dart';
import 'package:random_number_lotto/ui/roundSearch/selected_numbers.dart';

class RoundSearchUI extends StatelessWidget {
  const RoundSearchUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      margin: const EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          //회차 검색
          const RoundInputUI(),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "${context.watch<LottoProvider>().lotto.drwNo} 회",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "${context.watch<LottoProvider>().lotto.drwNoDate}",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //당첨번호 출력
          const SelectedNumbersUI(),
        ],
      ),
    );
  }
}
