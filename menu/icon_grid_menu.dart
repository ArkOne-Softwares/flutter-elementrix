import 'package:flutter/material.dart';

class MenuItem {
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  MenuItem({
    required this.text,
    required this.icon,
    required this.onTap,
  });
}

class FloatingMenu extends StatelessWidget {
  final List<MenuItem> items;

  const FloatingMenu({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        final item = items[index];
        return GestureDetector(
          onTap: item.onTap,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(item.icon),
              Text(item.text),
            ],
          ),
        );
      },
    );
  }
}

class FloatingMenuButton extends StatefulWidget {
  final List<MenuItem> items;
  final Alignment alignment;

  const FloatingMenuButton({
    super.key,
    required this.items,
    this.alignment = Alignment.bottomCenter,
  });

  @override
  _FloatingMenuButtonState createState() => _FloatingMenuButtonState();
}

class _FloatingMenuButtonState extends State<FloatingMenuButton> {
  OverlayEntry? _overlayEntry;

  void _showMenu() {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context)?.insert(_overlayEntry!);
  }

  void _hideMenu() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => Positioned(
        top: widget.alignment == Alignment.topCenter ? 50 : null,
        bottom: widget.alignment == Alignment.bottomCenter ? 50 : null,
        left: 0,
        right: 0,
        child: Material(
          color: Colors.transparent,
          child: Align(
            alignment: widget.alignment,
            child: Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                  ),
                ],
              ),
              child: FloatingMenu(items: widget.items),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: _showMenu,
      child: const Icon(Icons.menu),
    );
  }

  @override
  void dispose() {
    _hideMenu();
    super.dispose();
  }
}
