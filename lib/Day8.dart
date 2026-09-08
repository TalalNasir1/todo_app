import 'package:flutter/material.dart';
import 'package:todo_app/Task.dart';
import 'package:todo_app/TodoTile2.dart';


class Day8 extends StatefulWidget {
  const Day8({super.key});



  @override
  State<Day8> createState() => _Day8State();
}

class _Day8State extends State<Day8> {


TextEditingController controller = TextEditingController();

void onChanged(int index)
{
  setState(() {
    Notes[index][1] = !Notes[index][1];
  });
}




List Notes = [
["Make a list",true],
["Buy groceries",false],


];


onAdd(){

  setState(() {
    Notes.add([controller.text,false]);
  });
  controller.clear();
  Navigator.pop(context);
}

onDelete(int index){
  setState(() {
    Notes.removeAt(index);
  });
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         drawer: Drawer(
          backgroundColor: Color(0xFFFFF9C4),

        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 50,left: 20),
            child: Row(
              children: [
                Icon(Icons.home),
                SizedBox(width: 10,),
                Text('Home'),
              ],
            )
            ),
            Padding(padding: const EdgeInsets.only(top: 50,left: 20),
            child: Row(
              children: [
                Icon(Icons.info),
                SizedBox(width: 10,),
                Text('Info'),
              ],
            )
            ),
            Padding(padding: const EdgeInsets.only(top: 50,left: 20),
            child: GestureDetector(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => const Day9()));
              },
              child: Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 10,),
                  Text('About'),
                ],
              ),
            )
            )
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          showDialog(context: context, builder: (context){
            return Task(controllerX: controller,onAdd:() {
              onAdd();
            },);
          });
        },
        child: Icon(Icons.add),
        
        ),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFFDE047),
          title: const Text('My Tasks',style: TextStyle(color: Colors.black),),
        ),
        body:
        ListView.builder(itemCount: Notes.length, itemBuilder: (context,index){
                return Todotile2(
                  onDelete: () {
                    onDelete(index);
                  },
                  value: Notes[index][1] , onChanged:(p0) {
                  onChanged(index);
                }, Text:Notes[index][0]);
        }))
        );
    
  }
}