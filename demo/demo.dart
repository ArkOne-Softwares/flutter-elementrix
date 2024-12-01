import 'package:flutter/material.dart';
import 'package:urbanway/flutter-elementrix/appbar/appbar.dart';
import 'package:urbanway/flutter-elementrix/appbar/search.dart';
import 'package:urbanway/flutter-elementrix/buttons/buttons.dart';
import 'package:urbanway/flutter-elementrix/card/card_with_image_text_trailing.dart';
import 'package:urbanway/flutter-elementrix/dialog/dialog.dart';
import 'package:urbanway/flutter-elementrix/header/headers.dart';
import 'package:urbanway/flutter-elementrix/scaffold/gradient_scaffold.dart';

class DemoWidget extends StatefulWidget {
  const DemoWidget({Key? key}) : super(key: key);

  @override
  _DemoWidgetState createState() => _DemoWidgetState();
}

class _DemoWidgetState extends State<DemoWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FEScaffoldGradient(
      backgroundGradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        tileMode: TileMode.mirror,
        colors: [
          Colors.orangeAccent,
          Colors.amberAccent,
          Colors.amber
        ],
      ),
      appBar: FEAppBar(
        title: const Text('Flutter Demo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              FESearchInput(
                searchController: TextEditingController(),
                hintText: 'Search',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              FEButton(
                onPressed: () async {},
                text: 'Increment',
              ),
              FEButtonOutlined(
                onPressed: () async {},
                text: 'Increment Outlined',
              ),
              FEButtonIcon(
                onPressed: () async {},
                icon: Icons.add,
              ),
              FEButtonIconOutlined(
                onPressed: () async {},
                icon: Icons.add,
              ),
              FEButtonIconText(
                onPressed: () async {},
                icon: Icons.add,
                text: 'Increment Icon Text',
              ),
              FEButtonIconTextOutlined(
                onPressed: () async {},
                icon: Icons.add,
                text: 'Increment Icon Text Outlined',
              ),

              FEDialog(
                title: const Text('Dialog Title'),
                content: const Text('Dialog Content'),
                actions: [
                  FEButton(
                    onPressed: () async {},
                    text: 'Ok',
                  ),
                  FEButton(
                    onPressed: () async {},
                    text: 'Cancel',
                  ),
                ],
              ),

              const FEHeader(
                text: 'Header Text',
                subtitle: 'Header Subtitle',
              ),
              FEHeaderWithButton(
                text: 'Header Text',
                subtitle: 'Header Subtitle',
                onPressed: () async {},
                buttonText: 'Button',
              ),
              FEHeaderWithIconButton(
                text: 'Header Text',
                subtitle: 'Header Subtitle',
                icon: Icons.add,
                onPressed: () async {},
              ),
              CardWithImageTextTrailing(
                text: 'Card Text',
                imageUrl: 'https://via.placeholder.com/150',
                subtitle: 'Card Subtitle',
                onPressed: () async {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FEFloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
