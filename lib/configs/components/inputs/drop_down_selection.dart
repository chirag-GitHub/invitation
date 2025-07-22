import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quotanic/configs/config.dart';

class DropDownSelection extends StatefulWidget {
  // final FocusNode myFocusNode;
  final String? hintText;
  final bool? alignLabelWithHint;
  final int? maxLine;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final bool? obscureText;
  final bool isSearchEnable;
  final List<String>? autofillHints;
  final Function? onSubmit;
  final IconStyleData? suffixIcon;
  final Function? suffixClick;
  final Widget? prefixIcon;
  final Function? onChanged;
  final TextStyle? textStyle;
  final List<String> list;
  String? selectedValue;

  @override
  State<StatefulWidget> createState() {
    return _InputTextField();
  }

  DropDownSelection({
    super.key,
    required this.list,
    required this.selectedValue,
    this.hintText,
    this.alignLabelWithHint,
    this.maxLine,
    this.inputFormatters,
    this.textInputAction,
    this.obscureText,
    this.autofillHints,
    this.onSubmit,
    this.suffixIcon,
    this.suffixClick,
    this.prefixIcon,
    this.onChanged,
    this.textStyle,
    this.isSearchEnable = true,
  });
}

class _InputTextField extends State<DropDownSelection> {
  bool isError = false;
  String errorString = '';
  bool isOpen = false;
  final TextEditingController textEditingController = TextEditingController();

  getLabelTextStyle(color) {
    return Theme.of(context).textTheme.bodySmall;
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
        DropdownButtonHideUnderline(
          child: DropdownButton2<dynamic>(
            isExpanded: true,
            hint: Text(widget.hintText ?? S.current.select,
                // widget.hintText ?? 'Select',
                style: Theme.of(context).textTheme.bodySmall),
            items: widget.list
                .map((dynamic item) => DropdownMenuItem<dynamic>(
                      value: item,
                      child: Text(
                        item.toString(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: widget.textStyle ??
                            Theme.of(context).textTheme.bodyMedium,
                      ),
                    ))
                .toList(),
            value: widget.selectedValue,
            onChanged: (dynamic value) {
              widget.selectedValue = value;
              if (widget.onChanged != null) {
                widget.onChanged!(value);
              }
            },
            dropdownSearchData: widget.isSearchEnable
                ? DropdownSearchData(
                    searchController: textEditingController,
                    searchInnerWidgetHeight: 45,
                    searchInnerWidget: Container(
                      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: TextFormField(
                        expands: false,
                        maxLines: 1,
                        keyboardType: TextInputType.number,
                        controller: textEditingController,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            hintText: S.current.searchHere,
                            // hintText: 'Search',
                            hintStyle: Theme.of(context).textTheme.bodySmall,
                            border: UnderlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withValues(alpha: 0.05)),
                      ),
                    ),
                    searchMatchFn: (item, searchValue) {
                      return item.value.toString().contains(searchValue);
                    },
                  )
                : null,
            onMenuStateChange: (isOpen) {
              this.isOpen = isOpen;
              // textEditingController.clear();

              setState(() {});
            },
            buttonStyleData: ButtonStyleData(
              padding: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: isError
                      ? Theme.of(context).colorScheme.error
                      : Theme.of(context).colorScheme.onSurface,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isOpen == true ? 0 : 8),
                  bottomRight: Radius.circular(isOpen == true ? 0 : 8),
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                color: Theme.of(context).cardColor.withAlpha(100),
              ),
              elevation: 0,
            ),
            iconStyleData: widget.suffixIcon ??
                IconStyleData(
                  icon: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 50.h,
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    // topRight:
                    //     Radius.circular(widget.myFocusNode.hasFocus ? 8 : 0),
                    // topLeft:
                    //     Radius.circular(widget.myFocusNode.hasFocus ? 8 : 0),
                  )),
              // offset: const Offset(-10, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: WidgetStateProperty.all<double>(6),
                thumbVisibility: WidgetStateProperty.all<bool>(true),
              ),
            ),
            menuItemStyleData: MenuItemStyleData(
              height: 45,
              selectedMenuItemBuilder: (context, child) {
                return Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  color: Theme.of(context).primaryColor.withValues(alpha: 0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownMenuItem<dynamic>(
                        // value: selectedValue,
                        child: Text(
                          widget.selectedValue.toString(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      Icon(
                        Icons.check_circle,
                        color: ThemeColor.primaryLightColor,
                      ),
                    ],
                  ),
                );
              },
              padding: EdgeInsets.only(left: 15, right: 15),
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

