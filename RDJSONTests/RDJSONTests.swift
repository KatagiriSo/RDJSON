//
//  RDJSONTests.swift
//  RDJSONTests
//
//  Created by 片桐奏羽 on 2016/09/21.
//  Copyright © 2016年 Rodhos. All rights reserved.
//

import XCTest
@testable import RDJSON

class RDJSONTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let ms = "Hello! from js!!!"
        let txt = "{\"messageID\":\"Test\",\"param\":{\"message\":\"Hello! from js!!!\"}}"
        guard let jsonVal = JSONValue.parse(txt: txt) else {
            XCTAssert(false, "txt parse")
            return
        }
        
        guard let messagID = jsonVal["messageID"]?.string else {
            XCTAssert(false, "key:messageID")
            return
        }
        XCTAssert(messagID == "Test", "key:Test")
        
        guard let message = jsonVal["param"]?["message"]?.string else {
            XCTAssert(false, "key:param.message")
            return
        }
        
        XCTAssert(message == ms, "message\(message) != \(ms)")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
