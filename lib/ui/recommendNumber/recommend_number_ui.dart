import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_number_lotto/ui/recommendNumber/recommended_number_ui.dart';

class RecommendNumberUI extends StatefulWidget {
  const RecommendNumberUI({super.key});

  @override
  State<RecommendNumberUI> createState() => _RecommendNumberUIState();
}

class _RecommendNumberUIState extends State<RecommendNumberUI> {
  List<int> nums = List<int>.filled(6, 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
      child: Column(
        children: [
          Text(
            '로또 번호 추천',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  for (int i = 0; i < 6; i++) {
                    int temp = Random().nextInt(45) + 1;
                    while (nums.contains(temp)) {
                      temp = Random().nextInt(45) + 1;
                    }
                    nums[i] = temp;
                  }
                });
              },
              child: const Text("Click")),
          const SizedBox(
            height: 30,
          ),
          RecommendedNumberUI(nums: nums),
        ],
      ),
    );
  }
}
