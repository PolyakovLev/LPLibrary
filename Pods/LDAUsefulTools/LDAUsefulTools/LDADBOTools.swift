//
//  LDADBOTools.swift
//  LDAUsefulTools
//
//  Created by ZOLOTAREV Sergey on 28.11.2019.
//  Copyright © 2019 POLYAKOV Lev. All rights reserved.
//

import Foundation

func validationInn (inn: [Int]) -> (Bool){
    let coefficientFirst:  [Int] = [7,2,4,10,3,5,9,4,6,8,0,0]
    let coefficientSecond: [Int] = [3,7,2,4,10,3,5,9,4,6,8,0]
    var index = 0
    var controlSumFirst = 0
    var controlSumSecond = 0
    
    switch inn.count {
    case 10:
        for number in inn {
            controlSumFirst += number * coefficientFirst[index+1]
            index += 1
        }
        controlSumFirst %= 11
        
        if (controlSumFirst == inn[inn.count - 1]) {
            return true
        }
        return false
    case 12:
        for number in inn {
            controlSumFirst  = controlSumFirst + number * coefficientFirst[index]
            controlSumSecond = controlSumSecond + number * coefficientSecond[index]
            index += 1
        }
        controlSumFirst  %= 11
        controlSumSecond %= 11
        
        if ((controlSumFirst == inn[inn.count - 2]) && (controlSumSecond == inn[inn.count - 1])) {
            return true
        }
        return false
    default:
        return false
    }
}

extension String {
    func phonePhormater() -> String {
        let mask = "+7 (XXX) XXX-XX-XX"
        var numbers = Array(self).filter { $0.isNumber }
        numbers.removeFirst()
        guard numbers.count == 10 else { return "Номер введен неверно" }
        var result = ""
        var index = 0
        for ch in mask where index < numbers.count {
            if ch == "X" {
                result.append(numbers[index])
                index += 1
            } else {
                result.append(ch)
            }
        }
        return result
    }
    
    func isCardNumberValidByLhuna() -> Bool {
        var result: Int = 0
        var counter: Int = 1
        
        if (self.count < 16 || self.count > 19) {return false}
        if var panInteger = Int(self) {
            while panInteger > 0 {
                if (counter % 2 == 0) {
                    let tmp = (panInteger % 10) * 2
                    result += tmp > 9 ? (tmp / 10) + (tmp % 10) : tmp
                } else {
                    result += panInteger % 10
                }
                panInteger = panInteger / 10
                counter += 1
            }
        }
        return result % 10 == 0
    }
    
    func isInnCorrect() -> Bool {
        if (Int(self) == 0){ return false }
        guard !self.isEmpty else { return false }
        for number in self {
            guard number != " " else { return false }
            guard number.isNumber else { return false }
        }
        let innArray = self.compactMap{$0.wholeNumberValue}
        return validationInn(inn: innArray)
    }
}
