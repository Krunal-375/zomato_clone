import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
class SquareSwitch extends StatefulWidget {
  const SquareSwitch({super.key});

  @override
  State<SquareSwitch> createState() => _SquareSwitchState();
}

class _SquareSwitchState extends State<SquareSwitch> {
  final _controller = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return AdvancedSwitch(
     controller: _controller,
     activeColor: Colors.green,
     inactiveColor: Colors.grey,
     activeChild: const Text('ON'),
     inactiveChild: const Text('OFF'),
     borderRadius: const BorderRadius.all( Radius.circular(5)),
     width: 60.0,
     height: 30.0,
     enabled: true,
     disabledOpacity: 0.5,
   );
  }
}