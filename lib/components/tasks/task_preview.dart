import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todolist/components/tasks/task_detail.dart';
import 'package:todolist/models/task.dart';
import 'package:todolist/screens/all_tasks.dart';

class TaskPreview extends StatelessWidget {
  final Task task;
  final bool selected;
  final Function onSelect;

  const TaskPreview({Key? key,
    required this.task,
    required this.onSelect,
    required this.selected })
      : super(key: key); //constructor
  void onTap() {
    onSelect(task);
  }

  @override
  Widget build(BuildContext context) {
    var color;

    if(task.completed==true){
      
      color=Colors.green.shade400;

    }else{
      color=Colors.red.shade400;
    }
    return ListTile(
      
      tileColor: selected ? Colors.yellow.shade300 : Colors.grey.shade100,
      
      shape: RoundedRectangleBorder(
        
          side: 
          
            BorderSide(color: color, width: 1),
            borderRadius: BorderRadius.circular(10)),

            title: Text(task.content),
            subtitle: selected ? Text('${task.createdAt}') : null,
            trailing: selected ? const Icon(Icons.check) : null,
            onTap: () => onTap(),
    );
  }
}




  
     
    //   shape:  Border.all(
        
    //     //Si  list "selectionné" = bleu sinon color depend de la selection true ou false
    //   color: selected ? Colors.yellow.shade300 : color,
    //   width: 2.0,
      
      
      
    // ),
    //   tileColor: selected ? Colors.yellow.shade300 : Colors.grey.shade100,
      
      

    //   title: Text(task.content),
    //   subtitle: selected ? Text('${task.createdAt}') : null,
    //   trailing: selected ? const Icon(Icons.check) : null,
    //   onTap: () => onTap(),
    // );