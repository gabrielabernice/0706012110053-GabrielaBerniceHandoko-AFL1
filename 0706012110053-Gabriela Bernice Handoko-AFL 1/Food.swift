//
//  Food.swift
//  0706012110053-Gabriela Bernice Handoko-AFL 1
//
//  Created by MacBook Pro on 30/03/23.
//

import Foundation

class Food: Menu{
    var foodName: String
    
    init(foodName: String, price: Int, cafe: String) {
        self.foodName = foodName
        super.init(price: price, cafe: cafe)
    }
}
