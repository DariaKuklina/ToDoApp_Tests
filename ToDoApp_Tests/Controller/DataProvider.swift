//
//  DataProvider.swift
//  ToDoApp_Tests
//
//  Created by Darja Dobrih on 24.05.2023.
//

import UIKit

enum Section: Int {
    case todo
    case done
}

class DataProvider: NSObject {
    var taskManager: TaskManager?
    
}

extension DataProvider: UITableViewDelegate {
    
}

extension DataProvider: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let section = Section(rawValue: section) else
        {fatalError() } //если не можем создать секцию из enum, то ошибка в коде
        guard let taskManager = taskManager else { return 0 }
        switch section {
        case .todo: return taskManager.tasksCount
        case .done: return taskManager.doneTasksCount
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return TaskCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
}
