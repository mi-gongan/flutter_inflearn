import "package:flutter/material.dart";
import 'package:inflearn/constant/color.dart';

class SettingScreen extends StatefulWidget {
  final int maxNumber;

  const SettingScreen({required this.maxNumber, super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  double maxNumber = 1000;

  @override
  void initState() {
    super.initState();

    maxNumber = widget.maxNumber.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    print(maxNumber.toString().split(''));
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Body(maxNumber: maxNumber),
              _Footer(
                  maxNumber: maxNumber,
                  onPressed: onPressed,
                  onSliderChanged: onSliderChanged)
            ],
          ),
        ),
      ),
    );
  }

  void onSliderChanged(double val) {
    setState(() {
      maxNumber = val;
    });
  }

  void onPressed() {
    Navigator.of(context).pop(maxNumber.toInt());
  }
}

class _Body extends StatelessWidget {
  final double maxNumber;
  const _Body({required this.maxNumber, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: maxNumber
            .ceil()
            .toString()
            .split('')
            .map(
              (e) => Image.asset(
                'asset/img/$e.png',
                width: 50.0,
                height: 70.0,
              ),
            )
            .toList(),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  final double maxNumber;
  final VoidCallback onPressed;
  final ValueChanged<double>? onSliderChanged;
  const _Footer(
      {required this.maxNumber,
      required this.onPressed,
      required this.onSliderChanged,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Slider(
          value: maxNumber,
          min: 1000,
          max: 100000,
          onChanged: onSliderChanged,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: RED_COLOR),
          child: const Text("저장!"),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
