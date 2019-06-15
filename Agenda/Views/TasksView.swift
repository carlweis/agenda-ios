//
//  TasksView.swift
//  Agenda
//
//  Created by Carl Weis on 6/13/19.
//  Copyright © 2019 Carl Weis. All rights reserved.
//

import SwiftUI

struct TasksView : View {
  @State var showNewTaskModal = false
  
  var tasks: [Task] = [Task]()
  var body: some View {
    NavigationView {
      
      // DateView
      HStack(alignment: .firstTextBaseline) {
        Text(DateHelper.today(style: DateFormatter.Style.medium))
          .font(.headline)
          .foregroundColor(.secondary)
          .padding([.horizontal], 18)
        Spacer()
      }
      
      // Task List
      List(tasks) { task in
        TaskCell(task: task)
      }
        
      // Navigation Title
      .navigationBarTitle(Text("Agenda"))
      
      // Plus Button
      HStack(alignment: .center) {
        
        PresentationButton(
          Image(systemName: "plus.circle")
            .font(.system(size: 40))
            .padding(.vertical)
          , destination: Text("New Task Form")
        )
        
        
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

struct TaskCell : View {
  var task: Task
    var body: some View {
      return NavigationButton(destination: Text(task.name)) {
          HStack {
            Image(systemName: task.icon)
            Text(task.name)
              .font(.headline)            
          }
      }
    }
}
