import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app/model/task_model.dart';

class FirebaseUtils{
  static getCollectionRef(){
    FirebaseFirestore.instance.collection(TaskModel.collectionName).withConverter<TaskModel>(
        fromFirestore: (snapshot,_ )=>TaskModel.fromJson(snapshot.data()!),
        toFirestore: (TaskModel,_)=>TaskModel.toJson(),);
  }
 Future<void> addTaskModel(TaskModel taskModel){
    //1 Get Collection Reference
    var collRef=getCollectionRef();
    // 2 add new document for data base

    var docRef=collRef.doc();
    // sweet 2l task model 2ly howa atuo bl id bta3 2l doc
    taskModel.id = docRef.id;
    return docRef.set(taskModel);
  }
}