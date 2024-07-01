import 'package:flutter/material.dart';

class ConditionsContainervisaorcash extends StatefulWidget {
  const ConditionsContainervisaorcash({
    Key? key,
    required this.condition,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  final String condition;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  _ConditionsContainervisaorcashState createState() => _ConditionsContainervisaorcashState();
}

class _ConditionsContainervisaorcashState extends State<ConditionsContainervisaorcash> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: widget.isSelected ? Colors.redAccent : Colors.orange,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.condition.trim(),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}