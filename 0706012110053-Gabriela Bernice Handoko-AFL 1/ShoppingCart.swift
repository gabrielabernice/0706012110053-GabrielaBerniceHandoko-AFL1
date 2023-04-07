//
//  ShoppingCart.swift
//  0706012110053-Gabriela Bernice Handoko-AFL 1
//
//  Created by MacBook Pro on 30/03/23.
//

import Foundation

struct ShoppingCart{
    var orderList: [Menu] = []
    var cafe = Cafeteria()
    
    mutating func addToCart(store: String, choice: Int, pay: Pay){
        let listTuku = cafe.getTuku()
        let listGotri = cafe.getGotri()
        let listMadam = cafe.getMadam()
        let listKopte = cafe.getKopte()
        let listXJ = cafe.getXJ()
        
        switch store{
        case "Tuku-Tuku":
            orderList.append(listTuku[choice-1])
            pay.addTotalPrice(price: listTuku[choice-1].price)
            
        case "Gotri":
            orderList.append(listGotri[choice-1])
            pay.addTotalPrice(price: listGotri[choice-1].price)
            
        case "Madam Lie":
            orderList.append(listMadam[choice-1])
            pay.addTotalPrice(price: listMadam[choice-1].price)
            
        case "Kopte":
            orderList.append(listKopte[choice-1])
            pay.addTotalPrice(price: listKopte[choice-1].price)
            
        case "Xiang Jia":
            orderList.append(listXJ[choice-1])
            pay.addTotalPrice(price: listXJ[choice-1].price)
            
        default:
            break
        }
    }
    
    func showCart() {
        if orderList.isEmpty{
            print("Your cart is empty.\n")
            mainScreen()
        }
        else{
            var cafeList: [String] = []
            
            for cafe in orderList{
                if !(cafeList.contains(cafe.cafe)){
                  cafeList.append(cafe.cafe)
                }
              }
            
            for cafe in cafeList{
                print("Your order from \(cafe) :")
                var foodCountDict: [String: Int] = [:]
                
                for food in orderList {
                    
                    if food.cafe == cafe{
                        
                        if food is Food{
                            let fud = food as! Food
                            
                            if let count = foodCountDict[fud.foodName] {
                                foodCountDict[fud.foodName] = count + 1
                            }
                            else {
                                foodCountDict[fud.foodName] = 1
                            }
                        }
                        else if food is Beverage{
                            let bev = food as! Beverage
                            
                            if let count = foodCountDict[bev.bevName] {
                                foodCountDict[bev.bevName] = count + 1
                            }
                            else {
                                foodCountDict[bev.bevName] = 1
                            }
                        }
                    }
                }
                for (foodName, count) in foodCountDict {
                    print("- \(foodName) x\(count)")
                }
            }
        }
    }
    
    mutating func clearCart(){
        orderList.removeAll()
    }
}
