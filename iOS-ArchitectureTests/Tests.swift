//
//  Tests.swift
//  iOS-ArchitectureTests
//
//  Created by Hieu Van Phu on 5/30/16.
//  Copyright (c) 2016 PYCO Group. All rights reserved.
//

import XCTest
import RxSwift
@testable import iOS_Architecture

class Tests: XCTestCase {
    private let serialScheduler = SerialDispatchQueueScheduler(internalSerialQueueName: String(self.dynamicType))

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testExample() {

    }

    func testPerformanceExample() {

        self.measureBlock {

        }
    }
}
