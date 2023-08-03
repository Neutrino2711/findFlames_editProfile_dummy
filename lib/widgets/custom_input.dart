import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return Flexible(
    //   child: Padding(
    //     padding: const EdgeInsets.all(4),
    //     child: Container(
    //       // height: 150,
    //       decoration: BoxDecoration(
    //         color: Theme.of(context).colorScheme.onInverseSurface,
    //         borderRadius: BorderRadius.circular(20.0),
    //       ),
    //     ),
    //   ),
    // );
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      height: 210.0,
      child: TextField(
        maxLength: 200,
        maxLines: 7,
        // expands: true,
        style: Theme.of(context).textTheme.bodyMedium!,

        decoration: InputDecoration(
          hintText: '"Tell them about you."',
          hintStyle: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontSize: 18.0, fontWeight: FontWeight.w400),
          filled: true,
          fillColor: Theme.of(context).colorScheme.onInverseSurface,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }
}
