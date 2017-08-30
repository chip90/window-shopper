//
//  Wage.swift
//  window-shopper
//
//  Created by Carleton Snow on 8/29/17.
//  Copyright © 2017 Carleton Snow. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
