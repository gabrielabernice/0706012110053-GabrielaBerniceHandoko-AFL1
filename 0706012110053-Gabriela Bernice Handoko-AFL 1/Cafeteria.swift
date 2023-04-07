//
//  Cafeteria.swift
//  0706012110053-Gabriela Bernice Handoko-AFL 1
//
//  Created by MacBook Pro on 30/03/23.
//

import Foundation

struct Cafeteria{
    var menuList: [Menu] = []
    var cafeList: [String] = []
    
    var foodList = [Food(foodName: "Tahu Isi", price: 5000, cafe: "Tuku-Tuku"),
                    Food(foodName: "Nasi Kuning", price: 15000, cafe: "Tuku-Tuku"),
                    Food(foodName: "Nasi Campur", price: 20000, cafe: "Tuku-Tuku"),
                    Food(foodName: "Popmie Goreng", price: 7000, cafe: "Tuku-Tuku"),
                    Food(foodName: "Beef Rendang", price: 30000, cafe: "Gotri"),
                    Food(foodName: "Fried Rice", price: 37500, cafe: "Gotri"),
                    Food(foodName: "Gotri Signature", price: 20000, cafe: "Gotri"),
                    Food(foodName: "Mala Chicken", price: 25000, cafe: "Gotri"),
                    Food(foodName: "Nasi Ayam Geprek", price: 20000, cafe: "Madam Lie"),
                    Food(foodName: "Nasi Ayam Bakar", price: 25000, cafe: "Madam Lie"),
                    Food(foodName: "Nasi Goreng", price: 30000, cafe: "Madam Lie"),
                    Food(foodName: "Mie Goreng", price: 25000, cafe: "Madam Lie"),
                    Food(foodName: "Toast Kaya Butter", price: 18000, cafe: "Kopte"),
                    Food(foodName: "Mie Kosong Selatpanjang", price: 25000, cafe: "Xiang Jia"),
                    Food(foodName: "Nasi Ayam Hainan", price: 30000, cafe: "Xiang Jia"),
                    Food(foodName: "Mie Ayam Kobe", price: 25000, cafe: "Xiang Jia")]
    
    var bevList = [Beverage(bevName: "Air Mineral", price: 3000, cafe: "Tuku-Tuku"),
                   Beverage(bevName: "Es Lychee", price: 15000, cafe: "Gotri"),
                   Beverage(bevName: "Es Teh Manis", price: 5000, cafe: "Madam Lie"),
                   Beverage(bevName: "Kopi Tarik Kopte", price: 15000, cafe: "Kopte"),
                   Beverage(bevName: "Es Cincau", price: 17000, cafe: "Kopte"),
                   Beverage(bevName: "Teh Kundur", price: 14000, cafe: "Kopte"),
                   Beverage(bevName: "Milo Dinosaur", price: 16000, cafe: "Kopte"),
                   Beverage(bevName: "Kopi O", price: 12000, cafe: "Xiang Jia"),
                   Beverage(bevName: "Teh Tarik", price: 16000, cafe: "Xiang Jia")]
    
    init() {
        for food in foodList {
            menuList.append(food)
        }
        
        for beverage in bevList {
            menuList.append(beverage)
        }
    }
    
    mutating func showCafe(){
        for cafe in menuList{
            if !(cafeList.contains(cafe.cafe)){
              cafeList.append(cafe.cafe)
            }
          }
        
        for (index, cafe) in cafeList.enumerated(){
            print("[\(index+1)] \(cafe)")
        }
    }
    
    func getTuku() -> [Menu]{
        var tukuList: [Menu] = []
        
        for menu in menuList {
            if menu.cafe == "Tuku-Tuku"{
                tukuList.append(menu)
            }
        }
        return tukuList
    }
    
    func getGotri() -> [Menu]{
        var gotriList: [Menu] = []
        
        for menu in menuList{
            if menu.cafe == "Gotri"{
                gotriList.append(menu)
            }
        }
        return gotriList
    }
    
    func getMadam() -> [Menu]{
        var madamList: [Menu] = []
        
        for menu in menuList{
            if menu.cafe == "Madam Lie"{
                madamList.append(menu)
            }
        }
        return madamList
    }
    
    func getKopte() -> [Menu]{
        var kopteList: [Menu] = []
        
        for menu in menuList{
            if menu.cafe == "Kopte"{
                kopteList.append(menu)
            }
        }
        return kopteList
    }
    
    func getXJ() -> [Menu]{
        var XJList: [Menu] = []
        
        for menu in menuList{
            if menu.cafe == "Xiang Jia"{
                XJList.append(menu)
            }
        }
        return XJList
    }
    
    func tukuTuku(){
        let tukuList: [Menu] = getTuku()
        
        print("""
              Hi, welcome back to Tuku-Tuku!
              What would you like to order?
              
              Food(s) :
              """)
        
        for (index, tuku) in tukuList.enumerated(){
            if tuku is Food{
                let tukuFood = tuku as! Food
                print("[\(index+1)] \(tukuFood.foodName)")
            }
        }
        
        print()
        print("Beverage(s) : ")
        
        for (index, tuku) in tukuList.enumerated(){
            if tuku is Beverage{
                let tukuBev = tuku as! Beverage
                print("[\(index+1)] \(tukuBev.bevName)")
            }
        }
    }
    
    func gotri(){
        let gotriList: [Menu] = getGotri()
        
        print("""
              Hi, welcome back to Gotri!
              What would you like to order?
              
              Food(s) :
              """)
        
        for (index, gotri) in gotriList.enumerated(){
            if gotri is Food{
                let gotriFood = gotri as! Food
                print("[\(index+1)] \(gotriFood.foodName)")
            }
        }
        
        print()
        print("Beverage(s) : ")
        
        for (index, gotri) in gotriList.enumerated(){
            if gotri is Beverage{
                let gotriBev = gotri as! Beverage
                print("[\(index+1)] \(gotriBev.bevName)")
            }
        }
    }
    
    func madamLie(){
        let madamList: [Menu] = getMadam()
        
        print("""
              Hi, welcome back to Madam Lie!
              What would you like to order?
              
              Food(s) :
              """)
        
        for(index, madam) in madamList.enumerated(){
            if madam is Food{
                let madamFood = madam as! Food
                print("[\(index+1)] \(madamFood.foodName)")
            }
        }
        
        print()
        print("Beverage(s) : ")
        
        for(index, madam) in madamList.enumerated(){
            if madam is Beverage{
                let madamBev = madam as! Beverage
                print("[\(index+1)] \(madamBev.bevName)")
            }
        }
    }
    
    func kopte(){
        let kopteList: [Menu] = getKopte()
        
        print("""
              Hi, welcome back to Kopte!
              What would you like to order?
              
              Food(s) :
              """)
        
        for(index, kopte) in kopteList.enumerated(){
            if kopte is Food{
                let kopteFood = kopte as! Food
                print("[\(index+1)] \(kopteFood.foodName)")
            }
        }
        
        print()
        print("Beverage(s) : ")
        
        for(index, kopte) in kopteList.enumerated(){
            if kopte is Beverage{
                let kopteBev = kopte as! Beverage
                print("[\(index+1)] \(kopteBev.bevName)")
            }
        }
    }
    
    func xiangJia(){
        let XJList: [Menu] = getXJ()
        
        print("""
              Hi, welcome back to Xiang Jia!
              What would you like to order?
              
              Food(s) :
              """)
        
        for(index, xj) in XJList.enumerated(){
            if xj is Food{
                let xjFood = xj as! Food
                print("[\(index+1)] \(xjFood.foodName)")
            }
        }
        
        print()
        print("Beverage(s) : ")
        
        for(index, xj) in XJList.enumerated(){
            if xj is Beverage{
                let xjBev = xj as! Beverage
                print("[\(index+1)] \(xjBev.bevName)")
            }
        }
    }
}
