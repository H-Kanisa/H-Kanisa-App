import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/style/pallete.dart';

class DropDown {
  /// This gives the button text or it sets default text as 'click me'.
  final String buttonText;

  /// This gives the bottom sheet title.
  final String bottomSheetTitle;

  /// This will give the submit button text.
  final String submitButtonText;

  /// This will give the submit button background color.
  final Color submitButtonColor;

  /// This will give the hint to the search text filed.
  final String searchHintText;

  /// This will give the background color to the search text filed.
  final Color searchBackgroundColor;

  /// This will give the default search controller to the search text field.
  final TextEditingController searchController;

  /// This will give the list of data.
  final List<SelectedListItem> dataList;

  /// This will give the call back to the selected items (multiple) from list.
  final Function(List<dynamic>) selectedItems;

  /// This will give the call back to the selected item (single) from list.
  final Function(String) selectedItem;

  /// This will give selection choise for single or multiple for list.
  final bool enableMultipleSelection;

  DropDown({
    this.buttonText,
    this.bottomSheetTitle,
    this.submitButtonText,
    this.submitButtonColor,
    this.searchHintText,
    this.searchBackgroundColor,
    this.searchController,
    this.dataList,
    this.selectedItems,
    this.selectedItem,
    this.enableMultipleSelection,
  });
}

class DropDownState {
  DropDown Drop;
  DropDownState(this.Drop);

  /// This gives the bottom sheet widget.
  void showModal(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return DropDownWidget(
              Drop: Drop,
            );
          },
        );
      },
    );
  }
}

/// This is Model class. Using this model class, you can add the list of data with title and its selection.
class SelectedListItem {
  bool isSelected;
  String name;
  String value;

  SelectedListItem(this.isSelected, this.name, {this.value});
}

/// This is main class to display the bottom sheet body.
class DropDownWidget extends StatefulWidget {
  DropDown Drop;

  DropDownWidget({this.Drop});
  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  /// This list will set when the list of data is not available.
  List<SelectedListItem> mainList = [];

  @override
  void initState() {
    super.initState();
    mainList = widget.Drop.dataList;
  }

  DraggableScrollableSheet scroll;

  void Scroll(context) {}

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.13,
      maxChildSize: 0.9,
      expand: false,
      builder: (BuildContext context, ScrollController scrollController) {
        return Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Bottom sheet title text
                  Text(
                    widget.Drop.bottomSheetTitle ?? 'Title',
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        color: AppColor.greenHK,
                        fontFamily: "Poppins",
                        fontSize: 20.0),
                  ),
                  Expanded(
                    child: Container(),
                  ),

                  /// Done button
                  Visibility(
                    visible: widget.Drop.enableMultipleSelection,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                          onPressed: () {
                            List<SelectedListItem> selectedList = widget
                                .Drop.dataList
                                .where((element) => element.isSelected == true)
                                .toList();
                            List<String> selectedNameList = [];

                            for (var element in selectedList) {
                              selectedNameList
                                  .add(element.value ?? element.name);
                            }

                            widget.Drop.selectedItems?.call(selectedNameList);
                            _onUnfocusKeyboardAndPop();
                          },
                          style: ElevatedButton.styleFrom(
                            primary:
                                widget.Drop.submitButtonColor ?? Colors.blue,
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: Text(widget.Drop.submitButtonText ?? 'Done')),
                    ),
                  ),
                ],
              ),
            ),

            /// A [TextField] that displays a list of suggestions as the user types with clear button.
            _AppTextField(
              Drop: widget.Drop,
              onTextChanged: _buildSearchList,
              onClearTap: _onClearTap,
            ),

            /// Listview (list of data with check box for multiple selection & on tile tap single selection)
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: mainList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: ListTile(
                          title: Text(
                            mainList[index].name,
                          ),
                          trailing: widget.Drop.enableMultipleSelection
                              ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      mainList[index].isSelected =
                                          !mainList[index].isSelected;
                                    });
                                  },
                                  child: mainList[index].isSelected
                                      ? const Icon(Icons.check_box)
                                      : const Icon(
                                          Icons.check_box_outline_blank),
                                )
                              : const SizedBox(
                                  height: 0.0,
                                  width: 0.0,
                                ),
                        ),
                      ),
                    ),
                    onTap: widget.Drop.enableMultipleSelection
                        ? null
                        : () {
                            widget.Drop.selectedItem?.call(
                                (mainList[index].value != null)
                                    ? mainList[index].value ?? ''
                                    : mainList[index].name);
                            _onUnfocusKeyboardAndPop();
                          },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  /// This helps when search enabled & show the filtered data in list.
  _buildSearchList(String userSearchTerm) {
    final results = widget.Drop.dataList
        .where((element) =>
            element.name.toLowerCase().contains(userSearchTerm.toLowerCase()))
        .toList();
    if (userSearchTerm.isEmpty) {
      mainList = widget.Drop.dataList;
    } else {
      mainList = results;
    }
    setState(() {});
  }

  /// This helps when want to clear text in search text field.
  void _onClearTap() {
    widget.Drop.searchController.clear();
    mainList = widget.Drop.dataList;
    setState(() {});
  }

  /// This helps to unfocus the keyboard & pop from the bottom sheet.
  _onUnfocusKeyboardAndPop() {
    FocusScope.of(context).unfocus();
    Navigator.of(context).pop();
  }
}

/// This is search text field class.
class _AppTextField extends StatefulWidget {
  DropDown Drop;
  Function(String) onTextChanged;
  VoidCallback onClearTap;

  _AppTextField({
    this.Drop,
    this.onTextChanged,
    this.onClearTap,
  });

  @override
  State<_AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<_AppTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        controller: widget.Drop.searchController,
        cursorColor: Colors.black,
        onChanged: (value) {
          widget.onTextChanged(value);
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.Drop.searchBackgroundColor ?? Colors.black12,
          contentPadding:
              const EdgeInsets.only(left: 0, bottom: 0, top: 0, right: 15),
          hintText: widget.Drop.searchHintText ?? 'Search',
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          prefixIcon: const IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          suffixIcon: GestureDetector(
            onTap: widget.onClearTap,
            child: const Icon(
              Icons.cancel,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
