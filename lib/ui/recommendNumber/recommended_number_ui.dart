import 'package:flutter/material.dart';

class RecommendedNumberUI extends StatelessWidget {
  RecommendedNumberUI({super.key, required this.nums});
  List<int> nums;
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
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: nums.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              CircleAvatar(
                backgroundColor: getColor(nums[index]),
                child: Text(
                  '${nums[index]}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              const SizedBox(
                width: 23,
              ),
            ],
          );
        },
      ),
    );
  }
}
