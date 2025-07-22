import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quotanic/configs/config.dart';

class SearchTextField extends StatefulWidget {
  final FocusNode myFocusNode;

  final TextEditingController controller;
  final Color? borderColor;
  final Color? filledColor;
  final String? labelText;
  final String? hintText;
  final bool? alignLabelWithHint;
  final TextInputType? keyboardType;
  final bool autofocus;
  final int? maxLine;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final Function? validation;
  final bool? checkOfErrorOnFocusChange;
  final bool? obscureText;
  final List<String>? autofillHints;
  final Function? onSubmit;
  final Widget? suffixIcon;
  final Function? suffixClick;
  final Widget? prefixIcon;
  final Function? onChanged;
  final TextStyle? hintStyle;
  final bool isReadOnly;

  @override
  State<StatefulWidget> createState() {
    return _InputTextField();
  }

  const SearchTextField({
    super.key,
    this.labelText,
    this.borderColor,
    this.filledColor,
    this.hintText,
    this.alignLabelWithHint,
    required this.autofocus,
    this.maxLine,
    required this.controller,
    required this.myFocusNode,
    this.inputFormatters,
    this.keyboardType,
    this.textInputAction,
    this.validation,
    this.checkOfErrorOnFocusChange,
    this.obscureText,
    this.autofillHints,
    this.onSubmit,
    this.suffixIcon,
    this.suffixClick,
    this.prefixIcon,
    this.onChanged,
    this.hintStyle,
    this.isReadOnly = false,
  });
}

class _InputTextField extends State<SearchTextField> {
  bool isError = false;
  String errorString = '';

  getLabelTextStyle() {
    return Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.onSurface);
  } //label text style

  getTextFieldStyle() {
    return Theme.of(context).textTheme.bodyMedium;
  } //text-field style

  getErrorTextFieldStyle() {
    return Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(color: Theme.of(context).colorScheme.error);
  } // Error text style

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            width: 100.w,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color:
                  widget.filledColor ?? Theme.of(context).colorScheme.surface,
              border: Border.all(
                  color: widget.borderColor ??
                      Theme.of(context).colorScheme.surface),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context)
                      .colorScheme
                      .surface
                      .withValues(alpha: 0.2),
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0), // shadow direction: bottom right
                )
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Padding(
                //   padding: EdgeInsets.only(left: 20),
                //   child: Icon(
                //     Icons.search_sharp,
                //     color: Theme.of(context).colorScheme.onSurface,
                //   ),
                // ),
                Expanded(
                  child: TextFormField(
                    readOnly: widget.isReadOnly,
                    controller: widget.controller,
                    scrollPadding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus!.unfocus();
                    },
                    focusNode: widget.myFocusNode,
                    style: getLabelTextStyle(),
                    obscureText: widget.obscureText ?? false,
                    onChanged: (value) {
                      if (widget.onChanged != null) {
                        widget.onChanged!(value);
                      }
                    },
                    keyboardAppearance: Theme.of(context).brightness,
                    autofillHints: widget.autofillHints ?? [],
                    autofocus: widget.autofocus,
                    maxLines: widget.maxLine ?? 1,
                    textCapitalization: TextCapitalization.sentences,
                    keyboardType: widget.keyboardType,
                    textInputAction: widget.textInputAction,
                    inputFormatters: widget.inputFormatters,
                    onFieldSubmitted: (value) {
                      if (widget.onSubmit != null) {
                        widget.onSubmit!();
                      }
                    },
                    cursorHeight: 15,
                    cursorColor:
                        widget.borderColor ?? Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                      isCollapsed: true,
                      hintText: widget.hintText ?? '',
                      hintStyle: widget.hintStyle ?? getLabelTextStyle(),
                      // fillColor: Colors.white,
                      isDense: true,
                      // labelText: widget.labelText,
                      // labelStyle: isError
                      //     ? getLabelTextStyle(Theme.of(context).colorScheme.error)
                      //     : getLabelTextStyle(widget.myFocusNode.hasFocus
                      //         ? Theme.of(context).primaryColor
                      //         : Theme.of(context).colorScheme.error),
                      contentPadding: const EdgeInsets.fromLTRB(15, 12, 15, 0),
                      filled: false,
                      alignLabelWithHint: widget.alignLabelWithHint ?? false,
                      errorStyle: const TextStyle(height: -1),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      // suffixIcon: widget.suffixIcon,
                      prefixIcon: widget.prefixIcon,

                      // hasFloatingPlaceholder: true,
                    ),

                    // name: 'email',
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
