import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTile extends StatelessWidget {
  const CustomTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.text,
      required this.isH});
  final FaIcon icon;
  final String title;
  final String text;
  final isH;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
              radius: 18,
              // padding: EdgeInsets.all(4),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(8.0),
              //   color: Theme.of(context).colorScheme.onInverseSurface,
              // ),
              child: icon),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Spacer(),
          Text(text,
              style: isH
                  ? TextStyle(
                      fontSize: 15.0,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    )
                  : Theme.of(context).textTheme.bodyMedium),
        ],
      ),
      trailing: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: isH
              ? Theme.of(context).colorScheme.onInverseSurface
              : Colors.black12,
        ),
        child: Icon(
          Icons.arrow_forward_ios_sharp,
          size: 15,
          color:
              isH ? Theme.of(context).colorScheme.inversePrimary : Colors.black,
        ),
      ),
    );
  }
}
