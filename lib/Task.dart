import 'package:flutter/material.dart';

class Task extends StatelessWidget {
 Task({super.key, required this.controllerX, required this.onAdd});


final VoidCallback onAdd;

 final TextEditingController controllerX;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
    content: Container(
      height: 200,
      width: 200,
      color: Colors.white,
      child: Column(
        children:[
          TextFormField(
            controller: controllerX,
            decoration: InputDecoration(
              hintText: 'Enter Task',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25)
              )
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  onAdd();
            
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFFFFF9C4),
                  ),
                  height: 50,
                  width: 100,
                  child: Center(child: Text('Add Task',style: TextStyle(color: Colors.black),)),
                ),
              ),
              SizedBox(width: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFFFFF9C4),
                  ),
                  height: 50,
                  width: 100,
                  child: Center(child: Text('Cancel',style: TextStyle(color: Colors.black),)),
                ),
              ),
            ],
          )

        ]

    )
  ));
}}