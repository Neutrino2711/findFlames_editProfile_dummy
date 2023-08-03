import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomBlock extends StatelessWidget {
  const CustomBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onInverseSurface,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
              child: Icon(
            Icons.add_circle_outline,
            color: Theme.of(context).colorScheme.inversePrimary,
            size: 25.0,
          )),
        ),
      ),
    );
  }
}
