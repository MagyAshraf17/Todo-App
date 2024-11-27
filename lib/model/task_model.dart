
class TaskModel {
  static const String collectionName =" TasksCollection";
   String id;
   String title;
   String description;
   DateTime selectedDate;
   bool isDone;

  TaskModel({
    required this.id,
    required this.title,
    required this.description,
    required this.selectedDate,
    required this.isDone,
  });
  factory TaskModel.fromJson(Map<String,dynamic> json){
    return TaskModel
      (id: json["id"],
      title: json["title"],
      selectedDate: DateTime.fromMicrosecondsSinceEpoch(json['selectedDate']),
      description: json["description"],
      isDone: json["isDone"],
    );
  }
    Map<String,dynamic> toJson(){
    return {
      'id' :this.id,
      'title' :this.title,
      'selectedDate' :this.selectedDate.microsecondsSinceEpoch,
      'description' :this.description,
      'isDone' :this.isDone,
    };


    }


}
