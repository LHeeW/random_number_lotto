import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_number_lotto/provider/lotto_provider.dart';

class SelectedNumbersUI extends StatelessWidget {
  const SelectedNumbersUI({super.key});

  Color getColor(int num) {
    if (num <= 10) {
      return Colors.yellowAccent;
    } else if (num <= 20) {
      return Colors.blueAccent;
    } else if (num <= 30) {
      return Colors.redAccent;
    } else if (num <= 40) {
      return Colors.grey;
    } else {
      return Colors.greenAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LottoProvider>(
      builder: (context, value, child) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: getColor(value.lotto.drwtNo1!),
            child: Text(value.lotto.drwtNo1.toString()),
          ),
          CircleAvatar(
            backgroundColor: getColor(value.lotto.drwtNo2!),
            child: Text(value.lotto.drwtNo2.toString()),
          ),
          CircleAvatar(
            backgroundColor: getColor(value.lotto.drwtNo3!),
            child: Text(value.lotto.drwtNo3.toString()),
          ),
          CircleAvatar(
            backgroundColor: getColor(value.lotto.drwtNo4!),
            child: Text(value.lotto.drwtNo4.toString()),
          ),
          CircleAvatar(
            backgroundColor: getColor(value.lotto.drwtNo5!),
            child: Text(value.lotto.drwtNo5.toString()),
          ),
          CircleAvatar(
            backgroundColor: getColor(value.lotto.drwtNo6!),
            child: Text(value.lotto.drwtNo6.toString()),
          ),
          const Icon(
            Icons.add,
            size: 35,
            color: Colors.grey,
          ),
          CircleAvatar(
            backgroundColor: getColor(value.lotto.bnusNo!),
            child: Text(value.lotto.bnusNo.toString()),
          ),
        ],
      ),
    );
  }
}
