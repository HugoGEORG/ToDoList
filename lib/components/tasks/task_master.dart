import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todolist/components/tasks/task_detail.dart';
import 'package:todolist/data/task.dart';
import 'package:todolist/components/tasks/task_preview.dart';
import 'package:todolist/components/tasks/task_form.dart';
import 'package:todolist/models/task.dart';

class TaskMaster extends StatelessWidget {
  final List<Task> listTasks;
  final Function hideDetails;
  final Function onUpdateTask;
  final Function onDeleteTask;
  final Function showDetailsWhenTaskIsSelected;
  final Function isSelected;
  final Function onProductSelected;

  TaskMaster({Key? key, required this.listTasks,required this.hideDetails, required this.onUpdateTask, required this.onDeleteTask, required this.showDetailsWhenTaskIsSelected
    , required this.isSelected, required this.onProductSelected})
      : super(key: key); //constructor

  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        showDetailsWhenTaskIsSelected(),
        
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.all(20.0),
            itemCount: listTasks.length,
            itemBuilder: (context, index) {
              return TaskPreview(
                
                task: listTasks[index],
                onSelect: onProductSelected,
                selected: isSelected(index),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 17,),
            )
          ),

      ],
    );
  }
}
