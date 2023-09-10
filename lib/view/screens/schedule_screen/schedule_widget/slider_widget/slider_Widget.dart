import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/color_manager/color_manager.dart';

class SliderWidget extends StatefulWidget {
  double _sliderValue = 1.0;
  RangeValues values=RangeValues(300, 700);

  double _result = 1.0;
  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {

    return RangeSlider(
        values: widget.values,
        activeColor: ColorManager.colorPrimary,
        inactiveColor: ColorManager.colorGrey,
        onChanged:(value) {
          setState(() {
            widget.values = value;
            // _result = 2.0 * _sliderValue; // Replace with your desired multiplication logic.
          });
        },
        min: 0.0, // Set your minimum value here
        max: 1000.0, // Set your maximum value here
        divisions: 20, // Adjust the number of divisions as needed
        labels: RangeLabels(widget.values.start.round().toString(), widget.values.end.round().toString())
    );

  }
}
