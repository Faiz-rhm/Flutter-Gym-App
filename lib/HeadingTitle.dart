
import 'package:flutter/material.dart';

class HeadingTitle extends StatelessWidget {
  final title;
  const HeadingTitle({ Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800)
          ),
          OutlinedButton(
            onPressed: null,
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
            ),
            child: Text("View all", style: TextStyle(color: Colors.blue[800], fontSize: 15, fontWeight: FontWeight.w600),),
          )
        ],
      ),
    );
  }
}