import 'package:flutter/material.dart';
import '../config.dart';

class FEHeader extends StatelessWidget {
  final String text;
  final String? subtitle;
  const FEHeader({required this.text, super.key, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: UiConfig.fontSize + 6,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        if (subtitle != null)
          Text(
            subtitle!,
            style: TextStyle(
                fontSize: UiConfig.fontSize,
                fontWeight: FontWeight.normal,
                color: Colors.grey),
          ),
      ],
    );
  }
}

class FEHeaderWithButton extends StatelessWidget {
  final String text;
  final String? subtitle;
  final VoidCallback onPressed;
  final String buttonText;
  const FEHeaderWithButton({required this.text,
    super.key,
    this.subtitle,
    required this.onPressed,
    required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: UiConfig.fontSize + 6,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            if (subtitle != null)
              Text(
                subtitle!,
                style: TextStyle(
                    fontSize: UiConfig.fontSize,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
          ],
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: TextStyle(
                color: UiConfig.accentColor, fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
  }
}

class FEHeaderWithIconButton extends StatelessWidget {
  final String text;
  final String? subtitle;
  final IconData icon;
  final VoidCallback onPressed;
  const FEHeaderWithIconButton({required this.text,
    super.key,
    this.subtitle,
    required this.onPressed,
    required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: UiConfig.fontSize + 6,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            if (subtitle != null)
              Text(
                subtitle!,
                style: TextStyle(
                    fontSize: UiConfig.fontSize,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
          ],
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon,
              color: UiConfig.accentColor, size: UiConfig.fontSize + 6),
          style: ButtonStyle(
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.all(4)),
            backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
          ),
        ),
      ],
    );
  }
}
