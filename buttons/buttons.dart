import 'package:flutter/material.dart';

const bgColor = Color(0xFFEA5017);
const textColor = Colors.white;

class FEButton extends ElevatedButton {
  FEButton({
    super.key,
    required String text,
    required VoidCallback super.onPressed,
  }) : super(
          child: Text(
            text,
            style: const TextStyle(
              color: textColor,
              fontSize: 14,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(bgColor),
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 18,
              ),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        );
}

class FEButtonOutlined extends OutlinedButton {
  FEButtonOutlined({
    super.key,
    required String text,
    required VoidCallback super.onPressed,
  }) : super(
          child: Text(
            text,
            style: const TextStyle(
              color: bgColor,
              fontSize: 14,
            ),
          ),
          style: ButtonStyle(
            elevation: WidgetStateProperty.all(0),
            alignment: Alignment.center,
            side: WidgetStateProperty.all(const BorderSide(width: 1, color: bgColor)),
            backgroundColor: WidgetStateProperty.all(Colors.transparent),
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 18,
              ),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        );
}

class FEButtonIcon extends ElevatedButton {
  FEButtonIcon({
    super.key,
    required IconData icon,
    required VoidCallback super.onPressed,
  }) : super(
          child: Icon(
            icon,
            color: textColor,
            size: 18,
          ),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(bgColor),
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 12,
              ),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        );
}

class FEButtonIconOutlined extends OutlinedButton {
  FEButtonIconOutlined({
    super.key,
    required IconData icon,
    required VoidCallback super.onPressed,
  }) : super(
          child: Icon(
            icon,
            color: bgColor,
            size: 18,
          ),
          style: ButtonStyle(
            elevation: WidgetStateProperty.all(0),
            alignment: Alignment.center,
            side: WidgetStateProperty.all(const BorderSide(width: 1, color: bgColor)),
            backgroundColor: WidgetStateProperty.all(Colors.transparent),
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 18,
              ),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        );
}

class FEButtonIconText extends ElevatedButton {
  FEButtonIconText({
    super.key,
    required IconData icon,
    required String text,
    required VoidCallback super.onPressed,
  }) : super(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: textColor,
                size: 16,
              ),
              const SizedBox(width: 4),
              Text(
                text,
                style: const TextStyle(
                  color: textColor,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(bgColor),
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 18,
              ),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        );
}

class FEButtonIconTextOutlined extends OutlinedButton {
  FEButtonIconTextOutlined({
    super.key,
    required IconData icon,
    required String text,
    required VoidCallback super.onPressed,
  }) : super(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: bgColor,
                size: 16,
              ),
              const SizedBox(width: 4),
              Text(
                text,
                style: const TextStyle(
                  color: bgColor,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          style: ButtonStyle(
            elevation: WidgetStateProperty.all(0),
            alignment: Alignment.center,
            side: WidgetStateProperty.all(const BorderSide(width: 1, color: bgColor)),
            backgroundColor: WidgetStateProperty.all(Colors.transparent),
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 18,
              ),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        );
}

class FEFloatingActionButton extends FloatingActionButton {
  const FEFloatingActionButton({
    super.key,
    super.child,
    super.tooltip,
    super.foregroundColor,
    super.focusColor,
    super.hoverColor,
    super.heroTag,
    super.focusElevation,
    super.hoverElevation,
    super.highlightElevation,
    super.disabledElevation,
    required super.onPressed,
    super.mouseCursor,
    super.mini = false,
    super.shape,
    super.clipBehavior = Clip.none,
    super.focusNode,
    super.autofocus = false,
    super.materialTapTargetSize,
    super.isExtended = false,
    super.enableFeedback,
  }) : super(
          backgroundColor: bgColor,
          elevation: 0,
        );
}
