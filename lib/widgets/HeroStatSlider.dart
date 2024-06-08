import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HeroStatSlider extends StatelessWidget {
  const HeroStatSlider({super.key, required this.statName, required this.statValue});

  final String statName;
  final double statValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Expanded(flex: 1, child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(statName),
        ),),
        Expanded(flex: 3, child: Slider(max: 100, value: statValue, onChanged: (value) {}),),
      ],
    );
  }
}