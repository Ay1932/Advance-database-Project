// insert one recode

db.tbl_todo.insertOne({
    "todo_title": "Review Loan Applications",
    "todo_desc": "Need to review 5 pending loan applications",
    "todo_date": new Date("2025-03-28T10:00:00"),
    "todo_admin_id": "3",
    "priority": "High"
  });

// insert may recode
  db.tbl_todo.insertMany([
    {
      "todo_title": "Customer Meeting",
      "todo_desc": "Meeting with VIP customer at 2 PM",
      "todo_date": new Date("2025-03-29T14:00:00"),
      "todo_admin_id": "1",
      "priority": "Medium"
    },
    {
      "todo_title": "System Maintenance",
      "todo_desc": "Schedule system maintenance for weekend",
      "todo_date": new Date("2025-03-30T18:00:00"),
      "todo_admin_id": "2",
      "priority": "Low"
    }
  ]);