//
//  TasksView.swift
//  Agenda
//
//  Created by Carl Weis on 6/13/19.
//  Copyright © 2019 Carl Weis. All rights reserved.
//

import SwiftUI

struct TasksView : View {
    var body: some View {
        Text("Agenda")
          .font(.title)
    }
}

#if DEBUG
struct TasksView_Previews : PreviewProvider {
    static var previews: some View {
        TasksView()
    }
}
#endif
