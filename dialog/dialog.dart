import 'package:flutter/material.dart';
import '../config.dart';

class FEDialog extends Dialog {
  final Widget? title;
  final Widget? content;
  final List<Widget>? actions;
  final IconData? icon;
  final String? image;

  const FEDialog({
    super.key,
    this.title,
    this.content,
    this.actions,
    this.icon,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [UiConfig.primaryColor, UiConfig.secondaryColor]),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              offset: const Offset(12, 26),
              blurRadius: 50,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[Icon(icon!, size: 50, color: UiConfig.accentColor), const SizedBox(height: 10)],
            if (image != null) ...[Image.asset(image!, width: 50, height: 50), const SizedBox(height: 10)],
            if (title != null) ...[
              DefaultTextStyle(
                style: TextStyle(fontSize: UiConfig.fontSize + 6, color: UiConfig.accentColor),
                child: title!,
              ),
              const SizedBox(
                height: 3.5,
              )
            ],
            if (content != null) ...[
              DefaultTextStyle(
                style: TextStyle(fontSize: UiConfig.fontSize, color: UiConfig.accentColor),
                child: content!,
              ),
              const SizedBox(
                height: 15,
              )
            ],
            if (actions != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: actions!,
              ),
          ],
        ),
      ),
    );
  }
}
