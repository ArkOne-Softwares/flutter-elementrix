import 'package:flutter/material.dart';

class FEScaffoldGradient extends Scaffold {
  final Gradient backgroundGradient;

  const FEScaffoldGradient({
    super.key,
    required this.backgroundGradient,
    super.appBar,
    super.body,
    super.floatingActionButton,
    super.floatingActionButtonLocation,
    super.floatingActionButtonAnimator,
    super.persistentFooterButtons,
    super.drawer,
    super.endDrawer,
    super.bottomNavigationBar,
    super.bottomSheet,
    super.resizeToAvoidBottomInset,
    super.primary,
    super.drawerDragStartBehavior,
    super.extendBody,
    super.extendBodyBehindAppBar,
    super.drawerScrimColor,
    super.drawerEdgeDragWidth,
    super.drawerEnableOpenDragGesture,
    super.endDrawerEnableOpenDragGesture,
    super.restorationId,
  }) : super(backgroundColor: Colors.transparent);

  @override
  _FEScaffoldState createState() => _FEScaffoldState();
}

class _FEScaffoldState extends ScaffoldState {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: (widget as FEScaffoldGradient).backgroundGradient,
      ),
      child: super.build(context),
    );
  }
}
