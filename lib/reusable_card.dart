import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.update});

  final Color colour;
  final Widget cardChild;
  final Function update;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: update,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        margin: EdgeInsets.all(15),
      ),
    );
  }
}
