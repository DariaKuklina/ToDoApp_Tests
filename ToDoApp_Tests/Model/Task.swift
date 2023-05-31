//
//  Task.swift
//  ToDoApp_Tests
//
//  Created by Darja Dobrih on 15.05.2023.
//

import Foundation

struct Task {
    let title: String
    let description: String?
    private(set) var date: Date?
    let location: Location?
    
    
    init(title: String, description: String? = nil,
         location: Location? = nil) {
        self.title = title
        self.description = description
        self.date = Date()
        self.location = location
    }
}

extension Task: Equatable {
    static func == (lhs: Task, rhs: Task) -> Bool {
        if lhs.title == rhs.title, // заголовок объекта слева равен заголовку объекта справа
           lhs.description == rhs.description,
           lhs.location == rhs.location {
            return true
        }
        return false
    }
}
