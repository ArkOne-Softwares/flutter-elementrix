import 'package:flutter/material.dart';
import 'dart:ui';

class FEGlassAppBar extends AppBar {
  FEGlassAppBar({
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
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                color: Colors.white.withOpacity(0.3),
              ),
            ),
          ),
        );
}
