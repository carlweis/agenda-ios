//
//  DateHelper.swift
//  Agenda
//
//  Created by Carl Weis on 6/14/19.
//  Copyright © 2019 Carl Weis. All rights reserved.
//

import Foundation

struct DateHelper {
  static func today(style: DateFormatter.Style) -> String {
    let date = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = style
    return dateFormatter.string(from: date)
  }
}
