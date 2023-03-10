//
//  main.swift
//  0706012110053-Gabriela Bernice Handoko-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

var cafeteria = ["Tuku-Tuku", "Gotri", "Madam Lie", "Kopte", "Gisoe Coffee"]
var menuTuku = ["Tahu Isi", "Nasi Kuning", "Nasi Campur", "Air Mineral", "Popmie Goreng"]
var hargaTuku = [5000, 15000, 20000, 3000, 7000]
var menuGotri = ["Beef Rendang", "Fried Rice", "Gotri Signature", "Mala Chicken", "Es Lychee"]
var hargaGotri = [30000, 37500, 20000, 25000, 15000]
var menuMadam = ["Nasi Ayam Geprek", "Nasi Ayam Bakar", "Nasi Goreng", "Es Teh Manis", "Mie Goreng"]
var hargaMadam = [20000, 25000, 30000, 5000, 25000]
var menuKopte = ["Kopi Tarik Kopte", "Teh Tarik Cincau", "Teh Kundur", "Milo Dinosaur", "Toast Kaya Butter"]
var hargaKopte = [15000, 17000, 14000, 16000, 18000]
var menuXJ = ["Mie Kosong Selatpanjang", "Nasi Ayam Hainan", "Mie Ayam Kobe", "Kopi O", "Teh Tarik"]
var hargaXJ = [25000, 30000, 25000, 12000, 16000]
var mainChoice:String = ""
var cafeChoice:String = ""
var jumlahBeli:String = ""
var cart:[String] = []
var harga:Int = 0
var payment:Int = 0
var cartCafe:[String] = []
var inputCart:String = ""
var money:String = ""
var change:Int = 0
var re:String = ""

func mainScreen(){
    print("""
          Welcome to UC-Walk Cafeteria 👨🏻‍🍳👩🏻‍🍳
          Please choose cafeteria:
          
          """)
    
    for (index, cafe) in cafeteria.enumerated() {
        print("[\(index + 1)] \(cafe)")
    }
    
    print("""
          -
          [S]hopping cart
          [Q]uit
          Your cafeteria choice?
          """, terminator: " ")
    
    mainChoice = readLine()!.lowercased()
    
    print()
    
    switch mainChoice{
    case "1" :
        tukuTuku()
        
    case "2" :
        gotri()
        
    case "3" :
        madamLie()
        
    case "4" :
        kopte()
        
    case "5" :
        xiangJia()
        
    case "s" :
        cartScreen()
        
    case "q" :
        exit(0)
        
    default :
        mainScreen()
    }
}

func tukuTuku(){
    print("""
          Hi, welcome back to Tuku-Tuku!
          What would you like to order?
          
          """)
    
    for (index, menu) in menuTuku.enumerated() {
        print("[\(index + 1)] \(menu)")
    }
    
    print("""
          -
          [B]ack to Main Menu
          Your menu choice?
          """, terminator: " ")
    
    cafeChoice = readLine()!.lowercased()
    
    print()
    
    switch cafeChoice{
    case "1" :
        print("""
              \(menuTuku[0]) @ \(hargaTuku[0].formatted())
              How many \(menuTuku[0]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            tukuTuku()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuTuku[0]) x\(jumlahBeli)")
            cartCafe.append("Tuku-Tuku")
            
            harga = hargaTuku[0] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            tukuTuku()
        }
        
    case "2" :
        print("""
              \(menuTuku[1]) @ \(hargaTuku[1].formatted())
              How many \(menuTuku[1]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            tukuTuku()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuTuku[1]) x\(jumlahBeli)")
            cartCafe.append("Tuku-Tuku")
            
            harga = hargaTuku[1] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            tukuTuku()
        }
        
    case "3" :
        print("""
              \(menuTuku[2]) @ \(hargaTuku[2].formatted())
              How many \(menuTuku[2]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            tukuTuku()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuTuku[2]) x\(jumlahBeli)")
            cartCafe.append("Tuku-Tuku")
            
            harga = hargaTuku[2] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            tukuTuku()
        }
        
    case "4" :
        print("""
              \(menuTuku[3]) @ \(hargaTuku[3].formatted())
              How many \(menuTuku[3]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            tukuTuku()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuTuku[3]) x\(jumlahBeli)")
            cartCafe.append("Tuku-Tuku")
            
            harga = hargaTuku[3] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            tukuTuku()
        }
        
    case "5" :
        print("""
              \(menuTuku[4]) @ \(hargaTuku[4].formatted())
              How many \(menuTuku[4]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            tukuTuku()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuTuku[4]) x\(jumlahBeli)")
            cartCafe.append("Tuku-Tuku")
            
            harga = hargaTuku[4] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            tukuTuku()
        }
        
    case "b" :
        mainScreen()
        
    default :
        tukuTuku()
    }
}

func gotri(){
    print("""
          Hi, welcome back to Gotri!
          What would you like to order?
          
          """)
    
    for (index, menu) in menuGotri.enumerated() {
        print("[\(index + 1)] \(menu)")
    }
    
    print("""
          -
          [B]ack to Main Menu
          Your menu choice?
          """, terminator: " ")
    
    cafeChoice = readLine()!.lowercased()
    
    print()
    
    switch cafeChoice{
    case "1" :
        print("""
              \(menuGotri[0]) @ \(hargaGotri[0].formatted())
              How many \(menuGotri[0]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            gotri()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuGotri[0]) x\(jumlahBeli)")
            cartCafe.append("Gotri")
            
            harga = hargaGotri[0] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            gotri()
        }
        
    case "2" :
        print("""
              \(menuGotri[1]) @ \(hargaGotri[1].formatted())
              How many \(menuGotri[1]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            gotri()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuGotri[1]) x\(jumlahBeli)")
            cartCafe.append("Gotri")
            
            harga = hargaGotri[1] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            gotri()
        }
        
    case "3" :
        print("""
              \(menuGotri[2]) @ \(hargaGotri[2].formatted())
              How many \(menuGotri[2]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            gotri()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuGotri[2]) x\(jumlahBeli)")
            cartCafe.append("Gotri")
            
            harga = hargaGotri[2] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            gotri()
        }
        
    case "4" :
        print("""
              \(menuGotri[3]) @ \(hargaGotri[3].formatted())
              How many \(menuGotri[3]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            gotri()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuGotri[3]) x\(jumlahBeli)")
            cartCafe.append("Gotri")
            
            harga = hargaGotri[3] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            gotri()
        }
        
    case "5" :
        print("""
              \(menuGotri[4]) @ \(hargaGotri[4].formatted())
              How many \(menuGotri[4]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            gotri()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuGotri[4]) x\(jumlahBeli)")
            cartCafe.append("Gotri")
            
            harga = hargaGotri[4] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            gotri()
        }
        
    case "b" :
        mainScreen()
        
    default :
        gotri()
    }
}

func madamLie(){
    print("""
          Hi, welcome back to Madam Lie!
          What would you like to order?
          """)
    
    for (index, menu) in menuMadam.enumerated() {
        print("[\(index + 1)] \(menu)")
    }
    
    print("""
          -
          [B]ack to Main Menu
          Your menu choice?
          """, terminator: " ")
    
    cafeChoice = readLine()!.lowercased()
    
    print()
    
    switch cafeChoice{
    case "1" :
        print("""
              \(menuMadam[0]) @ \(hargaMadam[0].formatted())
              How many \(menuMadam[0]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            madamLie()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuMadam[0]) x\(jumlahBeli)")
            cartCafe.append("Madam Lie")
            
            harga = hargaMadam[0] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            madamLie()
        }
        
    case "2" :
        print("""
              \(menuMadam[1]) @ \(hargaMadam[1].formatted())
              How many \(menuMadam[1]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            madamLie()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuMadam[1]) x\(jumlahBeli)")
            cartCafe.append("Madam Lie")
            
            harga = hargaMadam[1] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            madamLie()
        }
        
    case "3" :
        print("""
              \(menuMadam[2]) @ \(hargaMadam[2].formatted())
              How many \(menuMadam[2]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            madamLie()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuMadam[2]) x\(jumlahBeli)")
            cartCafe.append("Madam Lie")
            
            harga = hargaMadam[2] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            madamLie()
        }
        
    case "4" :
        print("""
              \(menuMadam[3]) @ \(hargaMadam[3].formatted())
              How many \(menuMadam[3]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            madamLie()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuMadam[3]) x\(jumlahBeli)")
            cartCafe.append("Madam Lie")
            
            harga = hargaMadam[3] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            madamLie()
        }
        
    case "5" :
        print("""
              \(menuMadam[4]) @ \(hargaMadam[4].formatted())
              How many \(menuMadam[4]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            madamLie()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuMadam[4]) x\(jumlahBeli)")
            cartCafe.append("Madam Lie")
            
            harga = hargaMadam[4] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            madamLie()
        }
        
    case "b" :
        mainScreen()
        
    default :
        madamLie()
    }
}

func kopte(){
    print("""
          Hi, welcome back to Kopte!
          What would you like to order?
          """)
    
    for (index, menu) in menuKopte.enumerated() {
        print("[\(index + 1)] \(menu)")
    }
    
    print("""
          -
          [B]ack to Main Menu
          Your menu choice?
          """, terminator: " ")
    
    cafeChoice = readLine()!.lowercased()
    
    print()
    
    switch cafeChoice{
    case "1" :
        print("""
              \(menuKopte[0]) @ \(hargaKopte[0].formatted())
              How many \(menuKopte[0]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            kopte()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuKopte[0]) x\(jumlahBeli)")
            cartCafe.append("Kopte")
            
            harga = hargaKopte[0] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            kopte()
        }
        
    case "2" :
        print("""
              \(menuKopte[1]) @ \(hargaKopte[1].formatted())
              How many \(menuKopte[1]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            kopte()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuKopte[1]) x\(jumlahBeli)")
            cartCafe.append("Kopte")
            
            harga = hargaKopte[1] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            kopte()
        }
        
    case "3" :
        print("""
              \(menuKopte[2]) @ \(hargaKopte[2].formatted())
              How many \(menuKopte[2]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            kopte()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuKopte[2]) x\(jumlahBeli)")
            cartCafe.append("Kopte")
            
            harga = hargaKopte[2] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            kopte()
        }
        
    case "4" :
        print("""
              \(menuKopte[3]) @ \(hargaKopte[3].formatted())
              How many \(menuKopte[3]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            kopte()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuKopte[3]) x\(jumlahBeli)")
            cartCafe.append("Kopte")
            
            harga = hargaKopte[3] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            kopte()
        }
        
    case "5" :
        print("""
              \(menuKopte[4]) @ \(hargaKopte[4].formatted())
              How many \(menuKopte[4]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            kopte()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuKopte[4]) x\(jumlahBeli)")
            cartCafe.append("Kopte")
            
            harga = hargaKopte[4] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            kopte()
        }
        
    case "b" :
        mainScreen()
        
    default :
        kopte()
    }
}

func xiangJia(){
    print("""
          Hi, welcome back to Xiang Jia!
          What would you like to order?
          """)
    
    for (index, menu) in menuXJ.enumerated() {
        print("[\(index + 1)] \(menu)")
    }
    
    print("""
          -
          [B]ack to Main Menu
          Your menu choice?
          """, terminator: " ")
    
    cafeChoice = readLine()!.lowercased()
    
    print()
    
    switch cafeChoice{
    case "1" :
        print("""
              \(menuXJ[0]) @ \(hargaXJ[0].formatted())
              How many \(menuXJ[0]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            xiangJia()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuXJ[0]) x\(jumlahBeli)")
            cartCafe.append("Xiang Jia")
            
            harga = hargaXJ[0] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            xiangJia()
        }
        
    case "2" :
        print("""
              \(menuXJ[1]) @ \(hargaXJ[1].formatted())
              How many \(menuXJ[1]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            xiangJia()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuXJ[1]) x\(jumlahBeli)")
            cartCafe.append("Xiang Jia")
            
            harga = hargaXJ[1] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            xiangJia()
        }
        
    case "3" :
        print("""
              \(menuXJ[2]) @ \(hargaXJ[2].formatted())
              How many \(menuXJ[2]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            xiangJia()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuXJ[2]) x\(jumlahBeli)")
            cartCafe.append("Xiang Jia")
            
            harga = hargaXJ[2] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            xiangJia()
        }
        
    case "4" :
        print("""
              \(menuXJ[3]) @ \(hargaXJ[3].formatted())
              How many \(menuXJ[3]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            xiangJia()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuXJ[3]) x\(jumlahBeli)")
            cartCafe.append("Xiang Jia")
            
            harga = hargaXJ[3] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            xiangJia()
        }
        
    case "5" :
        print("""
              \(menuXJ[4]) @ \(hargaXJ[4].formatted())
              How many \(menuXJ[4]) do you want to buy?
              """, terminator: " ")
        jumlahBeli = readLine()!
        
        if((Int(jumlahBeli) ?? 0) <= 0 || jumlahBeli == ""){
            print()
            xiangJia()
        }
        else{
            print("Thankyou for ordering.\n")
            
            cart.append("\(menuXJ[4]) x\(jumlahBeli)")
            cartCafe.append("Xiang Jia")
            
            harga = hargaXJ[4] * (Int(jumlahBeli) ?? 0)
            
            payment += harga
            
            xiangJia()
        }
        
    case "b" :
        mainScreen()
        
    default :
        kopte()
    }
}

func orderScreen(){
    print("""
          
          """)
}

func cartScreen(){
    if cart.isEmpty{
        print("Your cart is empty.\n")
        mainScreen()
    }
    else{
        for(index, scart) in cartCafe.enumerated(){
            print("Your order from \(scart) :")
            print("- \(cart[index])")
        }
        print("""
              
              Press [B] to go back
              Press [P] to pay / checkout
              Your choice?
              """, terminator: " ")
        inputCart = readLine()!.lowercased()
        
        print()
        
        switch inputCart{
        case "b" :
            mainScreen()
            
        case "p" :
            checkoutScreen()
            
        default :
            cartScreen()
        }
    }
}

func checkoutScreen(){
    print("""
          Your total order : \(payment.formatted())
          Enter the amount of your money :
          """, terminator: " ")
    money = readLine()!
    
    print()
    
    if(money == ""){
        print("Please enter your payment.\n")
        checkoutScreen()
    }
    else {
        if let mon = Int(money) {
            if (mon == 0){
                print("Payment can't be zero.\n")
                checkoutScreen()
            }
            else if (mon < 0) {
                print("Please enter a valid amount.\n")
                checkoutScreen()
            } else if (mon > 0) {
                if(mon < payment){
                    checkoutScreen()
                }
                else if(mon >= payment){
                    print("""
                              Your total order : \(payment.formatted())
                              You pay : \(mon.formatted())
                              """)
                    
                    change = mon - payment
                    
                    cart = []
                    cartCafe = []
                    payment = 0
                    
                    print("""
                              Change : \(change.formatted())
                              
                              Enjoy your meals!
                              
                              Press [return] to go back to main screen :
                              """, terminator: " ")
                    
                    re = readLine()!.lowercased()
                    
                    print()
                    
                    if(re == ""){
                        mainScreen()
                    }
                    else{
                        checkoutScreen()
                    }
                }
            }
        } else {
            print("Please enter a valid amount.\n")
            checkoutScreen()
        }
    }
}

mainScreen()

//var mainChoice = "0"
//var menuTuku: String = "0"
//
//repeat{
//    print("""
//      Welcome to UC-Walk Cafeteria 👨🏻‍🍳👩🏻‍🍳
//      Please choose cafeteria:
//
//      [1] Tuku-Tuku
//      [2] Gotri
//      [3] Madam Lie
//      [4] Kopte
//      [5] Gisoe Coffee
//      -
//      [S]hopping cart
//      [Q]uit
//      Your cafeteria choice?
//      """)
//
//    var mainChoice = readLine()
//
//    print()
//
//    if(mainChoice == "1"){
//        var menuChoice = "0"
//        var check = true
//        repeat{
//            print("""
//              Hi, welcome back to Tuku-Tuku!
//              What would you like to order?
//
//              [1] Tahu isi
//              [2] Nasi kuning
//              [3] Nasi campur
//              [4] Air mineral
//              [5] Popmie goreng
//              -
//              [B]ack to Main Menu
//              Your menu choice?
//              """)
//            let menuChoice = readLine()
//
//            print()
//
//            if(menuChoice == "1"){
//                repeat{
//                    print("""
//                      Tahu isi @ 5.000
//                      How many tahu isi do you want to buy?
//                      """)
//                    var menuTuku = readLine()
//                }
//                while menuTuku == "0" || menuTuku == "1" || menuTuku == "2" || menuTuku != "3" || menuTuku != "4" || menuTuku != "5"
//                print("Thankyou for ordering.\n")
//            }
//            else if(menuChoice == "2"){
//                print("dua")
//            }
//            else if(menuChoice == "3"){
//                print("tiga")
//            }
//            else if(menuChoice == "4"){
//                print("empat")
//            }
//            else if(menuChoice == "5"){
//                print("lima")
//            }
//            else if(menuChoice == "b" || menuChoice == "B"){
//                check = false
//            }
//        }
//        while menuChoice == "0" && check == true
//    }
//    else if(mainChoice == "2"){
//        print("dua")
//    }
//    else if(mainChoice == "3"){
//        print("tiga")
//    }
//    else if(mainChoice == "4"){
//        print("empat")
//    }
//    else if(mainChoice == "5"){
//        print("lima")
//    }
//    else if(mainChoice == "s" || mainChoice == "S"){
//        print("huruf s apa S")
//    }
//    else if(mainChoice == "q" || mainChoice == "Q"){
//        exit(0)
//    }
//}
//while mainChoice == "0"
