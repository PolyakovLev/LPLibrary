//
//  LDAPrintSignature.swift
//  LDAUsefulTools
//
//  Created by GORYAVIN Vladimir on 28/11/2019.
//  Copyright © 2019 POLYAKOV Lev. All rights reserved.
//

import Foundation


public final class LDAPrintSignature {
    
    public init() {}
    
    public func debugLog(object: Any, functionName: String = #function, fileName: String = #file) -> String {
        let className = (fileName as NSString).lastPathComponent
        let output = String("object: \(object) file: <\(className)> function: \(functionName)\n")
        return output
    }
}
