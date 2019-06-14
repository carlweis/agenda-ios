//
//  Task.swift
//  Agenda
//
//  Created by Carl Weis on 6/13/19.
//  Copyright © 2019 Carl Weis. All rights reserved.
//

import SwiftUI

struct Task: Identifiable {
  var id: UUID = UUID()
  var projectId: UUID
  var name: String
  var description: String?
  var dueDate: Date
  var isCompleted: Bool = false
  var assignedTo: String
  var priority: Priority
}
