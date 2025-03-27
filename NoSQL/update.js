//   update one recde

  db.tbl_todo.updateOne(
    { "todo_title": "Payment Pending" },
    {
      $set: {
        "priority": "High",
        "status": "In Progress"
      }
    }
  );


  db.tbl_todo.updateMany(
    { "todo_admin_id": "3" },
    {
      $set: {
        "department": "Customer Service"
      }
    }
  );