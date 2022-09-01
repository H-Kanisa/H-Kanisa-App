import 'package:flutter/material.dart';

class FabPopover extends StatelessWidget {
  const FabPopover({
    this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.all(16.0),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [FabBottomSheet(context)],
      ),
    );
  }

  Widget FabBottomSheet(BuildContext context) {
    final theme = Theme.of(context);

    return FractionallySizedBox(
      widthFactor: 0.25,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        child: Container(
          height: 5.0,
          decoration: BoxDecoration(
            color: theme.dividerColor,
            borderRadius: const BorderRadius.all(Radius.circular(2.5)),
          ),
        ),
      ),
    );
  }

  void FabPressed() {
    showModalBottomSheet<int>(
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FabPopover(
          child: Column(
            children: [
              FabDropItem(
                context,
                title: Text('Total Task'),
                leading: Icon(Icons.check_circle_outline),
                trailing: Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              FabDropItem(
                context,
                title: Text('Due Soon'),
                leading: Icon(Icons.inbox),
                trailing: Switch(
                  value: false,
                  onChanged: (value) {},
                ),
              ),
              FabDropItem(
                context,
                title: Text('Completed'),
                leading: Icon(Icons.check_circle),
                trailing: Switch(
                  value: false,
                  onChanged: (value) {},
                ),
              ),
              FabDropItem(
                context,
                title: Text('Working On'),
                leading: Icon(Icons.flag),
                trailing: Switch(
                  value: false,
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
        );
      },
      context: null,
    );
  }

  Widget FabDropItem(
    BuildContext context, {
    Widget title,
    Widget leading,
    Widget trailing,
  }) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 16.0,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.dividerColor,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (leading != null) leading,
          if (title != null)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: DefaultTextStyle(
                child: title,
                style: theme.textTheme.headline6,
              ),
            ),
          Spacer(),
          if (trailing != null) trailing,
        ],
      ),
    );
  }
}
