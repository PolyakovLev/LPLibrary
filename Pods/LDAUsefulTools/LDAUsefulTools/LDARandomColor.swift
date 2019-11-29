//
//  LDARandomColor.swift
//  LDAUsefulTools
//
//  Created by GORYAVIN Vladimir on 28/11/2019.
//  Copyright © 2019 POLYAKOV Lev. All rights reserved.
//

import Foundation
import UIKit

public final class LDARandomColor {

    public init() {}
    
    public func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
    public func randomColor() -> UIColor {
        return UIColor(red: random(), green: random(),
                       blue: random(), alpha: random())
    }
}

