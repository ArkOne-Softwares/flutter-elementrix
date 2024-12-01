import 'package:flutter/material.dart';

import '../config.dart';

class FESearchInput extends StatelessWidget {
  final TextEditingController searchController;
  final String hintText;

  const FESearchInput(
      {required this.searchController, required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [UiConfig.primaryColor, UiConfig.secondaryColor]),
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        boxShadow: [
          BoxShadow(
              offset: const Offset(12, 26),
              blurRadius: 50,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.1)),
        ],
      ),
      child: TextField(
        controller: searchController,
        textAlign: TextAlign.left,
        textAlignVertical: TextAlignVertical.center,
        onChanged: (value) {},
        style:
            TextStyle(fontSize: UiConfig.fontSize, color: UiConfig.accentColor),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search,
              size: UiConfig.iconSize, color: UiConfig.accentColor),
          filled: true,
          fillColor: Colors.transparent,
          border: InputBorder.none,
          hintText: hintText,
          hintTextDirection: TextDirection.ltr,
          hintStyle: TextStyle(
              color: UiConfig.accentColor.withOpacity(.75),
              fontSize: UiConfig.fontSize),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}
