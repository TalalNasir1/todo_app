import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'Mytext.dart';

class Todotile2 extends StatelessWidget {
  const Todotile2({
    super.key,
    required this.value,
    required this.onChanged,
    required this.Text, 
    required this.onDelete, // Fix 1: Bind the parameter to the class variable
  });

  final bool value;
  final void Function(bool?) onChanged;
  final String Text;
  final VoidCallback onDelete; // Fix 2: Define the variable here

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const StretchMotion(), 
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onDelete, // Fix 3: Execute the passed-in function instead of printing
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
                height: 70,
                width: 70,
                child: const Icon(Icons.delete, color: Colors.white),
              ),
            ),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xFFFFF9C4),
          ),
          height: 70,
          width: 415,
          child: Row(
            children: [
              Checkbox(
                activeColor: Colors.white,
                checkColor: Colors.black,
                value: value, 
                onChanged: onChanged,
              ),
              Container(
                child: Mytext(title: Text, Checked: value),
              ),
            ],
          ),
        ),
      ),
    );
  }
}