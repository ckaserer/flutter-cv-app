import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homepage/constants/theme.dart';

class MyIconButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String tooltip;
  final double size;

  @override
  const MyIconButton(
    Key? key, {
    required this.icon,
    required this.onPressed,
    required this.tooltip,
    required this.size,
  }) : super(key: key);

  @override
  State<MyIconButton> createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {
  bool _favorite = false;

  void _onHover(PointerEvent details) {
    setState(() {
      _favorite = true;
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _favorite = false;
    });
  }

  Color setColor() {
    if (_favorite) {
      return MyTheme.accentColor;
    }
    return MyTheme.secondaryColor;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onHover,
      onExit: _onExit,
      child: IconButton(
        onPressed: widget.onPressed,
        tooltip: widget.tooltip,
        icon: FaIcon(
          widget.icon,
          color: setColor(),
          size: widget.size,
        ),
      ),
    );
  }
}
