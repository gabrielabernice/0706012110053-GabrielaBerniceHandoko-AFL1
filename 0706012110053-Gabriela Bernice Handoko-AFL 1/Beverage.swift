//
//  Beverage.swift
//  0706012110053-Gabriela Bernice Handoko-AFL 1
//
//  Created by MacBook Pro on 30/03/23.
//

import Foundation

class Beverage: Menu{
    var bevName: String
    
    init(bevName: String, price: Int, cafe: String) {
        self.bevName = bevName
        super.init(price: price, cafe: cafe)
    }
}
