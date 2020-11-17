import 'package:flutter/material.dart';
import 'color_slider.dart';


class CustomBottomSheet extends StatefulWidget {
  final double height;
  final Color color;
  Function getBottomSheetColor;
  CustomBottomSheet({this.height, this.color, this.getBottomSheetColor});



  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  var tempColor;

    @override
    Widget build(BuildContext context) {
      return Container(
        height: widget.height,
        color: tempColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: ColorSlider(
                getColorFromColorSlider: widget.getBottomSheetColor,
              ),
            ),
            Expanded(
              flex: 7,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.5)
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a search term'
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
                child: ElevatedButton(
                  child: Text(
                    'Save',
                  ),
                  onPressed: () {
                    setState(() {
                      widget.getBottomSheetColor = widget.getBottomSheetColor;
                    });
                  },
                ),
            ),
          ],
        ),
      );
    }
  }

