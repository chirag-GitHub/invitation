import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotanic/configs/components/inputs/search_text_field.dart';

class SearchInput extends StatelessWidget {
   const SearchInput({
    super.key,
    required this.focusNode,
    required this.controller,
    required this.onChange,
    required this.color,
    required this.hint,
    this.iconBorderColor,
  });

  final FocusNode focusNode;
  final TextEditingController controller;
  final Function onChange;
  final Color color;
  final String hint;
  final Color? iconBorderColor;

  @override
  Widget build(BuildContext context) {
    return SearchTextField(
      controller: controller,
      autofocus: false,
      maxLine: 1,
      myFocusNode: focusNode,
      borderColor: iconBorderColor??  Colors.white,
      filledColor: color,
      keyboardType: TextInputType.text,
      onChanged: (value) {
        onChange(value);
      },
      hintText: hint,
      hintStyle: Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(color: iconBorderColor??Colors.white60),
      isReadOnly: false,
      prefixIcon: Icon(
        CupertinoIcons.search,
        color: iconBorderColor?? Colors.white,
        size: 25,
      ),
    );
  }
}
