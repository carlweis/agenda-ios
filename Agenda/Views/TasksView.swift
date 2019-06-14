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
    List(tasks) { task in
      HStack {
        Image(systemName: "checkmark.circle")
        Text(task.name)
          .font(.headline)
      }
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
