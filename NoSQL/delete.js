// delete recode 


  db.tbl_todo.deleteOne({ "todo_title": "Appointment fot FD" });

  db.tbl_todo.deleteMany({ "priority": "Low" });
