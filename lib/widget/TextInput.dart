import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextWidget extends StatelessWidget {
  final TextEditingController? textEditingController;
  final double height, width, borderWidth;
  final MaterialColor color, borderColor;
  final String placeholder;
  final String? label;
  final String? hintText;
  final double radius;
  final bool obsecureText;
  final bool showPasswordEye;
  final Function? onSaved;
  final Function? validator;
  final Function onChanged;
  Icon? prefixIcon;

  TextWidget(
      {Key? key,
      required this.height,
      required this.width,
      this.borderWidth = 1,
      this.radius = 10,
      this.obsecureText = false,
      this.showPasswordEye = false,
      this.prefixIcon,
      this.color = Colors.grey,
      this.borderColor = Colors.lime,
      required this.placeholder,
      this.textEditingController,
      this.onSaved,
      this.validator,
      required this.onChanged,
      this.hintText,
      this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        controller: textEditingController,
        autofocus: false,
        obscureText: obsecureText,
        onChanged: (value) => {onChanged(value)},
        onSaved: (data) => {onSaved!(data)},
        validator: (value) {
          if (value!.isEmpty) {
            return hintText;
          }
          return null;
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.yellow, width: 5.0),
          ),
          hintText: placeholder,
          prefixIcon: prefixIcon ?? null,
          suffixIcon:
              showPasswordEye == true ? const Icon(Icons.remove_red_eye) : null,
        ),
      ),
    );
  }
}
