//
//  KeychainTests.swift
//  Tink AB
//
//  Created by Lukas Lipka on 21/08/2018.
//  Copyright © 2018 Tink AB. All rights reserved.
//

import Foundation
import XCTest
import Keychain

class KeychainTests: XCTestCase {
    private let account = "account"
    private let service = "service"
    private let password = "12345678"
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
        
        Keychain.delete(account: account, service: service)
    }
    
    func testSave() {
        Keychain.set(password: password, account: account, service: service)
        
        let result = Keychain.get(account: account, service: service)
        
        XCTAssertEqual(result!, password)
    }
    
    func testDelete() {
        Keychain.set(password: password, account: account, service: service)
        Keychain.delete(account: account, service: service)
        
        let result = Keychain.get(account: account, service: service)
        
        XCTAssertNil(result)
    }
    
    static var allTests = [
        ("testSave", testSave),
        ("testDelete", testDelete)
    ]
}
