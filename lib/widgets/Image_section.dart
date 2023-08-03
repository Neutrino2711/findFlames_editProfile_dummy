import 'package:flutter/material.dart';
import 'package:find_flames_assignment/widgets/custom_block.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Container(
                    height: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage("images/Elon_Musk.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [CustomBlock(), CustomBlock()],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              children: [
                CustomBlock(),
                CustomBlock(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
