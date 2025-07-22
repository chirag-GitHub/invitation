import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quotanic/configs/config.dart';

class InputTextField extends StatefulWidget {
  final FocusNode myFocusNode;

  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final bool? alignLabelWithHint;
  final TextInputType? keyboardType;
  final bool autofocus;
  final int? maxLine;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final Function validation;
  final bool? checkOfErrorOnFocusChange;
  final bool? obscureText;
  final bool isBorderEnable;
  final bool? readOnly;
  final Function? readOnlyClick;
  final List<String>? autofillHints;
  final Function? onSubmit;
  final Widget? suffixIcon;
  final Function? suffixClick;
  final Widget? prefixIcon;
  final Function? onChanged;
  final AutovalidateMode? autoValidateMode;

  @override
  State<StatefulWidget> createState() {
    return _InputTextField();
  }

  const InputTextField({
    super.key,
    required this.labelText,
    this.hintText,
    this.alignLabelWithHint,
    this.autofocus = false,
    this.maxLine = 1,
    required this.controller,
    required this.myFocusNode,
    this.inputFormatters,
    this.keyboardType,
    this.readOnly,
    this.readOnlyClick,
    this.textInputAction,
    required this.validation,
    this.checkOfErrorOnFocusChange = false,
    this.obscureText,
    this.autofillHints,
    this.onSubmit,
    this.isBorderEnable = false,
    this.suffixIcon,
    this.suffixClick,
    this.prefixIcon,
    this.onChanged,
    this.autoValidateMode,
  });
}

class _InputTextField extends State<InputTextField> {
  bool isError = false;
  String errorString = '';

  getLabelTextStyle(color) {
    return Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(color: Theme.of(context).colorScheme.onSurface);
  } //label text style

  getTextFieldStyle() {
    return Theme.of(context)
        .textTheme
        .bodyMedium!
        .copyWith(color: Theme.of(context).colorScheme.onSurface);
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
        FocusScope(
          child: Focus(
            onFocusChange: (focus) {
              setState(() {
                // if (widget.checkOfErrorOnFocusChange ) {
                //   isError = true;
                //   errorString = widget.validation(widget.tempTextEditingController.text);
                // } else {
                //   isError = false;
                //   errorString = '';
                // }
              });
            },
            child: Container(
              // padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color:
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
                border: widget.isBorderEnable
                    ? Border.all(
                        width: widget.myFocusNode.hasFocus ? 1.5 : 1,
                        color: isError
                            ? Theme.of(context).colorScheme.error
                            : widget.myFocusNode.hasFocus
                                ? Theme.of(context).colorScheme.onSurface
                                : Theme.of(context).colorScheme.onSurface,
                      )
                    : Border.all(
                        width: widget.myFocusNode.hasFocus ? 1.5 : 1,
                        color: isError
                            ? Theme.of(context).colorScheme.error
                            : widget.myFocusNode.hasFocus
                                ? Theme.of(context).colorScheme.surface
                                : Theme.of(context).colorScheme.surface,
                      ),
              ),
              child: TextFormField(
                readOnly: widget.readOnly ?? false,
                controller: widget.controller,
                scrollPadding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus!.unfocus();
                },
                onTapAlwaysCalled: true,
                onTap: () {
                  if (widget.readOnlyClick != null) {
                    widget.readOnlyClick!();
                  }
                },
                focusNode: widget.myFocusNode,
                style: getTextFieldStyle(),
                obscureText: widget.obscureText ?? false,
                onChanged: (value) {
                  if (widget.onChanged != null) {
                    widget.onChanged!(value);
                  }
                },
                keyboardAppearance: Theme.of(context).brightness,
                autofillHints: widget.autofillHints ?? [],
                autofocus: widget.autofocus,
                maxLines: widget.maxLine,
                textCapitalization: TextCapitalization.sentences,
                keyboardType: widget.keyboardType,
                textInputAction: widget.textInputAction,
                inputFormatters: widget.inputFormatters,
                autovalidateMode: widget.autoValidateMode,
                validator: (string) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    // Add Your Code here.
                  });

                  if (widget.validation(string) != null &&
                      widget.validation(string).toString().isNotEmpty) {
                    Future.delayed(Duration.zero, () async {
                      setState(() {
                        isError = true;
                        errorString = widget.validation(string);
                      });
                    });

                    return '';
                  } else {
                    Future.delayed(Duration.zero, () async {
                      setState(() {
                        isError = false;
                        errorString = '';
                      });
                    });
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  if (widget.onSubmit != null) {
                    widget.onSubmit!();
                  }
                },
                cursorHeight: 17,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                    labelText: widget.labelText,
                    labelStyle: isError
                        ? getLabelTextStyle(Theme.of(context).colorScheme.error)
                        : getLabelTextStyle(widget.myFocusNode.hasFocus
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).colorScheme.error),
                    contentPadding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    filled: false,
                    hintText: widget.hintText ?? '',
                    hintStyle: getLabelTextStyle(Colors.red),
                    alignLabelWithHint: widget.alignLabelWithHint ?? false,
                    errorStyle: const TextStyle(height: -1),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: widget.suffixIcon,
                    prefixIcon: widget.prefixIcon
                    // hasFloatingPlaceholder: true,
                    ),

                // name: 'email',
              ),
            ),
          ),
        ),
        Visibility(
            visible: isError ? true : false,
            child: Container(
                width: 100.w,
                padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                child: Text(
                  errorString,
                  style: getErrorTextFieldStyle(),
                ))),
      ],
    );
  }
}
