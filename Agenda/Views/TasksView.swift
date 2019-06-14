//
//  TasksView.swift
//  Agenda
//
//  Created by Carl Weis on 6/13/19.
//  Copyright © 2019 Carl Weis. All rights reserved.
//

import SwiftUI

struct TasksView : View {
  
  var tasks: [Task] = [Task]()
  var body: some View {
    NavigationView {
      List(tasks) { task in
        TaskCell(task: task)
      }
      .navigationBarTitle(Text("Agenda"))
    }
  }
}

#if DEBUG
struct TasksView_Previews : PreviewProvider {
  static var previews: some View {
    TasksView(tasks: taskTestData)
  }
}
#endif

struct TaskCell : View {
  var task: Task
    var body: some View {
      return NavigationButton(destination: Text(task.name)) {
          HStack {
            Image(systemName: "checkmark.circle")
            Text(task.name)
              .font(.headline)
          }
      }
    }
}
