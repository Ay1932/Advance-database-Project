db.tbl_todo.insertOne({
  "todo_title": "Appointment fot FD",
  "todo_desc": "appointment for fd at 1:00 pm",
  "todo_date": "2025-03-22 15:59:44",
  "todo_admin_id": "3"
});


db.tbl_todo.insertOne({
    "todo_title": "Appointment fot FD",
    "todo_desc": "appointment for fd at 1:00 pm",
    "todo_date": "2023-03-22 15:59:44",
    "todo_admin_id": "4"
  });

  db.tbl_todo.insertOne({
    "todo_title": "Appointment fot FD",
    "todo_desc": "appointment for fd at 1:00 pm",
    "todo_date": "2024-05-29 15:59:44",
    "todo_admin_id": "4"
  });

db.tbl_todo.find();

db.tbl_todo.find({ todo_admin_id: { $in: ["2"] } })