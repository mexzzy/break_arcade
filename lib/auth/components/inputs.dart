import 'package:break_arcade/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({Key? key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController(text: "");

    return Container(
      width: 60,
      height: 60,
      decoration: const BoxDecoration(
        color: AppColors.inputBg,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: TextFormField(
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          controller: controller,
          maxLength: 1,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: AppColors.white,
          ),
          decoration: const InputDecoration(
            counterText: "",
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
