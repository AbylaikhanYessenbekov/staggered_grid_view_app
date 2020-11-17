import 'package:flutter/material.dart';
import 'package:staggered_grid_view_app/bottom_sheet.dart';


class ColorSlider extends StatefulWidget {

  final Function getColorFromColorSlider;

  ColorSlider({this.getColorFromColorSlider});

  @override
  _ColorSliderState createState() => _ColorSliderState();
}

class _ColorSliderState extends State<ColorSlider> {
  Color _selectedColor;


  Color getSelectedColor() {
    return _selectedColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          ColorButton(
            color: Colors.red,
            onPress: () {
              setState(() {
                _selectedColor = Colors.red;
              });
            widget.getColorFromColorSlider(_selectedColor);
            },
          ),
          ColorButton(
            color: Colors.green,
            onPress: () {
              setState(() {
                _selectedColor = Colors.green;
              });
              widget.getColorFromColorSlider(_selectedColor);
            },
          ),
          ColorButton(
            color: Colors.blue,
            onPress: () {
              setState(() {
                _selectedColor = Colors.blue;
              });
              widget.getColorFromColorSlider(_selectedColor);
            },
          ),
          ColorButton(
            color: Colors.yellow,
            onPress: () {
              setState(() {
                _selectedColor = Colors.yellow;
              });
              widget.getColorFromColorSlider(_selectedColor);
            },
          ),
        ],
      ),
    );
  }
}


class ColorButton extends StatelessWidget {
  final Color color;
  final Function onPress;
  ColorButton({this.color, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration: new BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black),
        ),
      ),
    );
  }
}
