import "package:flutter/material.dart";
import 'package:inflearn/constant/color.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  double maxNumber = 1000;
  @override
  Widget build(BuildContext context) {
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
              Expanded(
                child: Row(
                  children: maxNumber
                      .toString()
                      .split('')
                      .map((e) => Image.asset(
                            'asset/img/$e.png',
                            width: 50.0,
                            height: 70.0,
                          ))
                      .toList(),
                ),
              ),
              Slider(
                value: maxNumber,
                min: 100,
                max: 1000,
                onChanged: (double val) {
                  setState(() {
                    maxNumber = val;
                  });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: RED_COLOR),
                child: Text("저장!"),
                onPressed: () {
                  Navigator.of(context).pop(maxNumber.toInt());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
