//
//  Payment.swift
//  0706012110053-Gabriela Bernice Handoko-AFL 1
//
//  Created by MacBook Pro on 30/03/23.
//

import Foundation

protocol Payment{
    var price: Int {get set}
    var payment: Int {get set}
    var change: Int {get set}
}

class Pay: Payment{
    var change: Int = 0
    var price: Int = 0
    var payment: Int = 0
    
    func addPayment(payment: Int){
        self.payment = payment
    }
    
    func addTotalPrice(price: Int){
        self.price += price
    }
    
    func count() -> Int{
        change = payment - price
        price = 0
        
        return change
    }
}
