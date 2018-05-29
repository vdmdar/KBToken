//
//  Test.swift
//  TokenTest
//
//  Created by ss on 5/29/18.
//  Copyright © 2018 Kaspi Business. All rights reserved.
//

import Foundation
import ECC

let curve = uECC_secp256r1()

public func printKeys() {
    var d = [UInt8](repeating: 0, count: 32)
    var z = [UInt8](repeating: 0, count: 64)

    let keys = uECC_make_key(&d, &z, curve)
    
    print(keys)
}
