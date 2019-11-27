//
//  LPLibraryTests.swift
//  LPLibraryTests
//
//  Created by Lev polyakov on 27.11.2019.
//  Copyright © 2019 Lev polyakov. All rights reserved.
//

import XCTest
@testable import LEVPOLLibrary

class LPLibraryTests: XCTestCase {

    var lplibrary: LPLibrary!
    
    override func setUp() {
        lplibrary = LPLibrary()
    }

    func testSum() {
        XCTAssertEqual(lplibrary.sum(a: 2, b: 3), 5)
    }
    
    func testSub() {
        XCTAssertEqual(lplibrary.sub(a: 10, b: 8), 2)
    }

}
