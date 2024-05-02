// ignore_for_file: unused_field, prefer_final_fields

import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  const Sandbox({super.key});

  @override
  State<Sandbox> createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _margin = 0.0;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedContainer(
          width: _width,
          color: _color,
          duration: const Duration(milliseconds: 1000),
          margin: EdgeInsets.all(_margin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      (_margin == 0) ? _margin = 50 : _margin = 0;
                    });
                  },
                  child: const Text("Animate Margin")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      (_color == Colors.blue)
                          ? _color = Colors.red
                          : _color = Colors.blue;
                    });
                  },
                  child: const Text("Animate Color")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      (_width == 200) ? _width = 400 : _width = 250;
                    });
                  },
                  child: const Text("Animate width")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _opacity == 1 ? _opacity = 0 : _opacity = 1;
                    });
                  },
                  child: const Text("Animate opacity")),
              AnimatedOpacity(
                opacity: _opacity,
                duration: const Duration(milliseconds: 1000),
                child: const Text("Animated Opacity"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
