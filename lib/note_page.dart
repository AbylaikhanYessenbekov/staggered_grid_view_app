import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'bottom_sheet.dart';
import 'constants.dart';

class NotePage extends StatefulWidget {

  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {

  var tempColor = Colors.white;
  void getColorFromBottomSheet(userSelectedColor) {
    setState(() {
      tempColor = userSelectedColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: kBorderColor),
            color: tempColor,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(border: Border.all(color: kBorderColor)),
                  child: AutoSizeText(
                    'Header',
                    maxLines: 1,
                  )),
            ),
            Expanded(
              flex: 5,
              child: AutoSizeText(
                'Note Content',
                maxLines: 3,
              ),
            ),
          ],
        ),
      ),
     onTap: () {
        showModalBottomSheet<Widget>(
            context: context,
            builder: (BuildContext context) {
              return CustomBottomSheet(
                height: 350.0,
                getBottomSheetColor: getColorFromBottomSheet,
              );
            }
        );
     }
    );
  }
}

