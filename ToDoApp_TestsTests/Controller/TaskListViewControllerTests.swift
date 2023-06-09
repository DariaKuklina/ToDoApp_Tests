//
//  TaskListViewControllerTests.swift
//  ToDoApp_TestsTests
//
//  Created by Darja Dobrih on 24.05.2023.
//

import XCTest
@testable import ToDoApp_Tests

final class TaskListViewControllerTests: XCTestCase {

    var sut: TaskListViewController!
    override func setUpWithError() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
         let vc = storyboard.instantiateViewController(withIdentifier: String(describing: TaskListViewController.self))
         sut = vc as? TaskListViewController
         
         sut.loadViewIfNeeded()
         
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testWhenViewIsLoadedTableViewNotNil() {
        XCTAssertNotNil(sut.tableView)
    }
    
    func testWhenViewIsLoadedDataProviderIsNotNil() {
         XCTAssertNotNil(sut.dataProvider)
    }
   
    func testWhenViewIsLoadedTableViewDelegateIsSet() {
        XCTAssertTrue(sut.tableView.delegate is DataProvider)
    }
    
    func testWhenViewIsLoadedTableViewDataSourceIsSet() {
        XCTAssertTrue(sut.tableView.dataSource is DataProvider)
    }
    
    func testWhenViewIsLoadedTableViewDelegateEqualsTableViewDataSource() {
        XCTAssertEqual(
            sut.tableView.delegate as? DataProvider,
            sut.tableView.dataSource as? DataProvider)
    }
}
