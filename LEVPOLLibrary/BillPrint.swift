//
//  BillPrint.swift
//  LEVPOLLibrary
//
//  Created by UGORETS Maria on 29/11/2019.
//  Copyright © 2019 Lev polyakov. All rights reserved.
//

import Foundation
import LDAUsefulTools

public func printBill(price: Decimal, type: OperationType, time: Date) {
    print("\n\n|--------------BILL:---------------")
    print("|operation sum:  \(price)")
    print("|type:           \(type)")
    print("|time:           \(time.dateToString)")
    print("|----------------------------------\n\n")
}
