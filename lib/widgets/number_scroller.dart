import 'package:flutter/material.dart';

class NumberScroller extends StatefulWidget {
  final int initialValue;
  final int minValue;
  final int maxValue;
  final int incrementBy;

  final Function(int) onChanged;

  NumberScroller({
    required this.initialValue,
    required this.minValue,
    required this.maxValue,
    required this.onChanged,
    required this.incrementBy,
  });

  @override
  _NumberScrollerState createState() => _NumberScrollerState();
}

class _NumberScrollerState extends State<NumberScroller> {
  int _value = 0;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  void _increment() {
    setState(() {
      _value = _value + widget.incrementBy;
      if (_value > widget.maxValue) {
        _value = widget.maxValue;
      }
      widget.onChanged(_value);
    });
  }

  void _decrement() {
    setState(() {
      _value = _value - 1;
      if (_value < widget.minValue) {
        _value = widget.minValue;
      }
      widget.onChanged(_value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: _decrement,
        ),
        SizedBox(width: 24),
        Text(
          '$_value',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(width: 24),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: _increment,
        ),
      ],
    );
  }
}
