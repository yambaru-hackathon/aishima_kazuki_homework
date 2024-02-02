import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;

  const CustomIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: Icon(icon));
  }
}
