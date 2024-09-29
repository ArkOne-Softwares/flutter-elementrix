import 'package:flutter/material.dart';
import 'package:freegate/flutter-elementrix/theme/app_theme.dart';

class FEButton extends StatefulWidget {
  final dynamic onPressed;

  final dynamic child;

  const FEButton({super.key, this.onPressed, this.child});

  @override
  State<FEButton> createState() => _FEButtonState();
}

class _FEButtonState extends State<FEButton> {
  final textTheme = AppTheme.darkAppBarTextTheme;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: widget.child,
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll<Color>(Colors.blue),
        textStyle: WidgetStatePropertyAll<TextStyle>(textTheme.bodySmall!.copyWith(color: Colors.white)),
        shape: WidgetStatePropertyAll<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      ),
    );
  }
}

class FEButtonElevated extends StatefulWidget {
  final dynamic onPressed;

  final dynamic child;

  const FEButtonElevated({super.key, this.onPressed, this.child});

  @override
  State<FEButtonElevated> createState() => _FEButtonElevatedState();
}

class _FEButtonElevatedState extends State<FEButtonElevated> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFEA5017),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Label Large Text',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
