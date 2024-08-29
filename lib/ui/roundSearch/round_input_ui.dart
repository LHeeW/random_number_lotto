import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:random_number_lotto/provider/lotto_provider.dart';

class RoundInputUI extends StatelessWidget {
  const RoundInputUI({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController roundController = TextEditingController();
    FocusNode textFocus = FocusNode();
    return Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: TextField(
            controller: roundController,
            focusNode: textFocus,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[0-9]')),
            ],
            decoration: InputDecoration(
                border:
                    const OutlineInputBorder(borderSide: BorderSide(width: 1)),
                hintText: '회차를 입력하세요.',
                label: const Text('Round'),
                suffixIcon: IconButton(
                    onPressed: () {
                      roundController.clear();
                    },
                    icon: const Icon(Icons.clear))),
          ),
        ),
        TextButton(
            onPressed: () {
              if (roundController.text.isEmpty == true) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('입력된 정보가 없습니다.')));
              } else if (int.parse(roundController.text) < 1 ||
                  int.parse(roundController.text) > 1134) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("없는 회차이거나 잘못된 입력입니다.")));
              } else {
                context
                    .read<LottoProvider>()
                    .fetch(num: int.parse(roundController.text));
              }
              textFocus.unfocus();
            },
            child: const Text("SEARCH")),
      ],
    );
  }
}
