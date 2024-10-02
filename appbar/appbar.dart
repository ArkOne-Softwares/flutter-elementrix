import 'package:flutter/material.dart';

class FEAppBar extends AppBar {
  FEAppBar({
    super.key,
    Widget? title,
    List<Widget>? actions,
    Widget? leading,
    bool super.centerTitle = true,
  }) : super(
          title: title != null
              ? DefaultTextStyle(
                  style: const TextStyle(fontSize: 14.0),
                  child: title,
                )
              : null,
          actions: actions?.map((action) {
            return DefaultTextStyle(
              style: const TextStyle(fontSize: 14.0),
              child: action,
            );
          }).toList(),
          leading: leading != null
              ? DefaultTextStyle(
                  style: const TextStyle(fontSize: 14.0),
                  child: leading,
                )
              : null,
          backgroundColor: Colors.transparent,
          elevation: 0,
        );
}
