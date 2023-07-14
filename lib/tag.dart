import 'package:flutter/material.dart';

class Tag extends StatefulWidget {
  Tag({this.text, this.color, this.pressed_color});

  final String? text;
  Color? color, pressed_color;


  

  @override
  State<Tag> createState() => _TagState();
}

class _TagState extends State<Tag> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {


        setState(() {
          if (widget.color != widget.pressed_color)
            widget.color = widget.pressed_color;
          else
            widget.color = Colors.black26;
        });


      },
      child: Container(
        
        height: MediaQuery.sizeOf(context).height*.048,
        width: 79.0,
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          
          color: widget.color,
        ),
        child: Center(
          child: Text(
            widget.text!,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
