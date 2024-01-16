// CheckBoxInListView widget

import 'package:flutter/material.dart';

class CheckBoxInListView extends StatefulWidget {
  final Function(bool, String) onCheckedChange;

  const CheckBoxInListView({super.key, required this.onCheckedChange});

  @override
  _CheckBoxInListViewState createState() => _CheckBoxInListViewState();
}

class _CheckBoxInListViewState extends State<CheckBoxInListView> {
  final Map<String, bool> _isChecked = {};

  final List<String> _texts = [
    'Pesto Paneer',
    'Paneer',
    'Extra Veggies',
    'Mushroom',
    'Corn',
    'Chilli Paneer',
  ];

  @override
  void initState() {
    super.initState();
    for (var text in _texts) {
      _isChecked[text] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: _texts.length,
        itemBuilder: (context, index) {
          final text = _texts[index];
          return CheckboxListTile(
            activeColor: Colors.red,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/VegIcon.png',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      text,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                const Text('₹ 40', style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
            value: _isChecked[text],
            onChanged: (val) {
              if (val != null) {
                int count = _isChecked.values.where((v) => v == true).toList().length;
                if (count < 4 || (_isChecked[text] == true && val == false)) {
                  setState(() {
                    _isChecked[text] = val;
                  });

                  // Notify the parent about the change
                  widget.onCheckedChange(val, text);
                }
              }
            },
          );
        },
      ),
    );
  }
}
