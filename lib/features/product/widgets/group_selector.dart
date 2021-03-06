import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../main.dart';
import '../../../models/group.dart';
import '../../../widget/checkable/checkable.dart';
import '../../group/cubit/group_cubit.dart';

typedef GroupCallback = void Function(Group group);

class GroupSelector extends StatefulWidget {
  final Group initialGroup;
  final List<Group> groups;
  final GroupCallback callback;

  const GroupSelector({
    Key key,
    @required this.callback,
    @required this.initialGroup,
    @required this.groups,
  }) : super(key: key);

  @override
  _GroupSelectorState createState() => _GroupSelectorState();
}

class _GroupSelectorState extends State<GroupSelector> {
  bool _checked;
  Group _group;
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _checked = widget.initialGroup != null;
    _group = widget.initialGroup;
    _controller = TextEditingController(text: _group?.title ?? "");
  }

  void invokeCallback() {
    widget.callback(_checked ? _group : null);
    _controller.text = _group?.title ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Checkable(
          initialChecked: _checked,
          checkedCallback: (context) => Expanded(
            child: TypeAheadField<Group>(
              textFieldConfiguration: TextFieldConfiguration(
                controller: _controller,
              ),
              suggestionsCallback: (pattern) async {
                var home = await sl<GroupCubit>().blackoutPreferences.getHome();
                return await sl<GroupCubit>().groupRepository.findAllByPatternAndHomeId(pattern, home.id);
              },
              itemBuilder: (context, suggestion) {
                return ListTile(
                  title: Text(suggestion.title),
                );
              },
              onSuggestionSelected: (group) {
                setState(() {
                  _group = group;
                });
                invokeCallback();
              },
            ),
          ),
          uncheckedCallback: (context) => Expanded(
            child: Text(
              "Group",
              textAlign: TextAlign.center,
            ),
          ),
          callback: (checked) {
            setState(() {
              _checked = checked;
            });
            invokeCallback();
          },
        ),
      ),
    );
  }
}
