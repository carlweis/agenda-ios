//
//  Project.swift
//  Agenda
//
//  Created by Carl Weis on 6/13/19.
//  Copyright © 2019 Carl Weis. All rights reserved.
//

import SwiftUI

struct Project: Identifiable {
  var id: UUID = UUID()
  var name: String
  var description: String
  var dueDate: Date
  var tasks: [Task] = [Task]()
}
