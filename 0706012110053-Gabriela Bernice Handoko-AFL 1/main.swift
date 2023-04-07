//
//  main.swift
//  0706012110053-Gabriela Bernice Handoko-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

var menu = Cafeteria()
var scart = ShoppingCart()
var payment = Pay()
var choice: String = ""

mainScreen()

func mainScreen(){
    print("""
          Welcome to UC-Walk Cafeteria 👨🏻‍🍳👩🏻‍🍳
          Please choose cafeteria:
          
          """)
    
    menu.showCafe()
    
    print("""
          -
          [S]hopping cart
          [Q]uit
          Your cafeteria choice?
          """, terminator: " ")
    
    choice = readLine()!.lowercased()
    print()
    
    switch choice{
    case "1" :
        tuku()
        
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

func tuku(){
    menu.tukuTuku()
    
    print("""
          -
          [B]ack to Main Menu
          Your menu choice?
          """, terminator: " ")
    
    choice = readLine()!.lowercased()
    print()
    
    let menuChoice = choice
    
    switch choice{
    case "1" :
        print("""
              \((menu.getTuku()[0] as! Food).foodName) @ \(menu.getTuku()[0].price.formatted())
              How many \((menu.getTuku()[0] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            tuku()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            tuku()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Tuku-Tuku", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            tuku()
        }
        
    case "2" :
        print("""
              \((menu.getTuku()[1] as! Food).foodName) @ \(menu.getTuku()[1].price.formatted())
              How many \((menu.getTuku()[1] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            tuku()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            tuku()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Tuku-Tuku", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            tuku()
        }
        
    case "3" :
        print("""
              \((menu.getTuku()[2] as! Food).foodName) @ \(menu.getTuku()[2].price.formatted())
              How many \((menu.getTuku()[2] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            tuku()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            tuku()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Tuku-Tuku", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            tuku()
        }
        
    case "4" :
        print("""
              \((menu.getTuku()[3] as! Food).foodName) @ \(menu.getTuku()[3].price.formatted())
              How many \((menu.getTuku()[3] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            tuku()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            tuku()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Tuku-Tuku", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            tuku()
        }
        
    case "5" :
        print("""
              \((menu.getTuku()[4] as! Beverage).bevName) @ \(menu.getTuku()[4].price.formatted())
              How many \((menu.getTuku()[4] as! Beverage).bevName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            tuku()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            tuku()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Tuku-Tuku", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            tuku()
        }
        
    case "b" :
        mainScreen()
        
    default :
        tuku()
    }
}

func gotri(){
    menu.gotri()
    
    print("""
          -
          [B]ack to Main Menu
          Your menu choice?
          """, terminator: " ")
    
    choice = readLine()!.lowercased()
    print()
    
    let menuChoice = choice
    
    switch choice{
    case "1" :
        print("""
              \((menu.getGotri()[0] as! Food).foodName) @ \(menu.getGotri()[0].price.formatted())
              How many \((menu.getGotri()[0] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            gotri()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            gotri()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Gotri", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            gotri()
        }
        
    case "2" :
        print("""
              \((menu.getGotri()[1] as! Food).foodName) @ \(menu.getGotri()[1].price.formatted())
              How many \((menu.getGotri()[1] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            gotri()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            gotri()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Gotri", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            gotri()
        }
        
    case "3" :
        print("""
              \((menu.getGotri()[2] as! Food).foodName) @ \(menu.getGotri()[2].price.formatted())
              How many \((menu.getGotri()[2] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            gotri()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            gotri()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Gotri", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            gotri()
        }
        
    case "4" :
        print("""
              \((menu.getGotri()[3] as! Food).foodName) @ \(menu.getGotri()[3].price.formatted())
              How many \((menu.getGotri()[3] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            gotri()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            gotri()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Gotri", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            gotri()
        }
        
    case "5" :
        print("""
              \((menu.getGotri()[4] as! Beverage).bevName) @ \(menu.getGotri()[4].price.formatted())
              How many \((menu.getGotri()[4] as! Beverage).bevName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            gotri()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            gotri()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Gotri", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            gotri()
        }
        
    case "b" :
        mainScreen()
        
    default :
        gotri()
    }
}

func madamLie(){
    menu.madamLie()
    
    print("""
          -
          [B]ack to Main Menu
          Your menu choice?
          """, terminator: " ")
    
    choice = readLine()!.lowercased()
    print()
    
    let menuChoice = choice
    
    switch choice{
    case "1" :
        print("""
              \((menu.getMadam()[0] as! Food).foodName) @ \(menu.getMadam()[0].price.formatted())
              How many \((menu.getMadam()[0] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            madamLie()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            madamLie()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Madam Lie", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            madamLie()
        }
        
    case "2" :
        print("""
              \((menu.getMadam()[1] as! Food).foodName) @ \(menu.getMadam()[1].price.formatted())
              How many \((menu.getMadam()[1] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            madamLie()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            madamLie()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Madam Lie", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            madamLie()
        }
        
    case "3" :
        print("""
              \((menu.getMadam()[2] as! Food).foodName) @ \(menu.getMadam()[2].price.formatted())
              How many \((menu.getMadam()[2] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            madamLie()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            madamLie()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Madam Lie", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            madamLie()
        }
        
    case "4" :
        print("""
              \((menu.getMadam()[3] as! Food).foodName) @ \(menu.getMadam()[3].price.formatted())
              How many \((menu.getMadam()[3] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            madamLie()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            madamLie()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Madam Lie", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            madamLie()
        }
        
    case "5" :
        print("""
              \((menu.getMadam()[4] as! Beverage).bevName) @ \(menu.getMadam()[4].price.formatted())
              How many \((menu.getMadam()[4] as! Beverage).bevName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            madamLie()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            madamLie()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Madam Lie", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            madamLie()
        }
        
    case "b" :
        mainScreen()
        
    default :
        madamLie()
    }
}

func kopte(){
    menu.kopte()
    
    print("""
          -
          [B]ack to Main Menu
          Your menu choice?
          """, terminator: " ")
    
    choice = readLine()!.lowercased()
    print()
    
    let menuChoice = choice
    
    switch choice{
    case "1" :
        print("""
              \((menu.getKopte()[0] as! Food).foodName) @ \(menu.getKopte()[0].price.formatted())
              How many \((menu.getKopte()[0] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            kopte()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            kopte()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Kopte", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            kopte()
        }
        
    case "2" :
        print("""
              \((menu.getKopte()[1] as! Beverage).bevName) @ \(menu.getKopte()[1].price.formatted())
              How many \((menu.getKopte()[1] as! Beverage).bevName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            kopte()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            kopte()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Kopte", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            kopte()
        }
        
    case "3" :
        print("""
              \((menu.getKopte()[2] as! Beverage).bevName) @ \(menu.getKopte()[2].price.formatted())
              How many \((menu.getKopte()[2] as! Beverage).bevName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            kopte()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            kopte()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Kopte", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            kopte()
        }
        
    case "4" :
        print("""
              \((menu.getKopte()[3] as! Beverage).bevName) @ \(menu.getKopte()[3].price.formatted())
              How many \((menu.getKopte()[3] as! Beverage).bevName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            kopte()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            kopte()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Kopte", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            kopte()
        }
        
    case "5" :
        print("""
              \((menu.getKopte()[4] as! Beverage).bevName) @ \(menu.getKopte()[4].price.formatted())
              How many \((menu.getKopte()[4] as! Beverage).bevName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            kopte()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            kopte()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Kopte", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            kopte()
        }
        
    case "b" :
        mainScreen()
        
    default :
        kopte()
    }
}

func xiangJia(){
    menu.xiangJia()
    
    print("""
          -
          [B]ack to Main Menu
          Your menu choice?
          """, terminator: " ")
    
    choice = readLine()!.lowercased()
    print()
    
    let menuChoice = choice
    
    switch choice{
    case "1" :
        print("""
              \((menu.getXJ()[0] as! Food).foodName) @ \(menu.getXJ()[0].price.formatted())
              How many \((menu.getXJ()[0] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            xiangJia()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            xiangJia()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Xiang Jia", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            xiangJia()
        }
        
    case "2" :
        print("""
              \((menu.getXJ()[1] as! Food).foodName) @ \(menu.getXJ()[1].price.formatted())
              How many \((menu.getXJ()[1] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            xiangJia()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            xiangJia()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Xiang Jia", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            xiangJia()
        }
        
    case "3" :
        print("""
              \((menu.getXJ()[2] as! Food).foodName) @ \(menu.getXJ()[2].price.formatted())
              How many \((menu.getXJ()[2] as! Food).foodName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            xiangJia()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            xiangJia()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Xiang Jia", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            xiangJia()
        }
        
    case "4" :
        print("""
              \((menu.getXJ()[3] as! Beverage).bevName) @ \(menu.getXJ()[3].price.formatted())
              How many \((menu.getXJ()[3] as! Beverage).bevName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            xiangJia()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            xiangJia()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Xiang Jia", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            xiangJia()
        }
        
    case "5" :
        print("""
              \((menu.getXJ()[4] as! Beverage).bevName) @ \(menu.getXJ()[4].price.formatted())
              How many \((menu.getXJ()[4] as! Beverage).bevName) do you want to buy?
              """, terminator: " ")
        
        choice = readLine()!
        
        if !(choice.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
            print("\nYou can only input number\n")
            xiangJia()
        }
        else if((Int(choice) ?? 0) <= 0){
            print()
            xiangJia()
        }
        else{
            print("Thankyou for ordering.\n")
            
            for _ in 1...(Int(choice) ?? 0){
                scart.addToCart(store: "Xiang Jia", choice: Int(menuChoice) ?? 0, pay: payment)
            }
            xiangJia()
        }
        
    case "b" :
        mainScreen()
        
    default :
        xiangJia()
    }
}

func cartScreen(){
    scart.showCart()
    print("""
                  
                  Press [B] to go back
                  Press [P] to pay / checkout
                  Your choice?
                  """, terminator: " ")
    
    choice = readLine()!.lowercased()
    print()
    
    switch choice{
    case "b" :
        mainScreen()
        
    case "p" :
        checkoutScreen()
        
    default :
        cartScreen()
    }
}

func checkoutScreen(){
    print("""
          Your total order : \(payment.price.formatted())
          Enter the amount of your money :
          """, terminator: " ")
    
    choice = readLine()!
    print()

    if(choice == ""){
        print("Please enter your payment.\n")
        checkoutScreen()
    }
    else {
        if let mon = Int(choice) {
            if (mon == 0){
                print("Payment can't be zero.\n")
                checkoutScreen()
            }
            else if (mon < 0) {
                print("Please enter a valid amount.\n")
                checkoutScreen()
            } else if (mon > 0) {
                if(mon < payment.price){
                    checkoutScreen()
                }
                else if(mon >= payment.price){
                    print("""
                              Your total order : \(payment.price.formatted())
                              You pay : \(mon.formatted())
                              """)

                    payment.addPayment(payment: mon)
                    let change = payment.count()
                    
                    scart.clearCart()

                    print("""
                              Change : \(change.formatted())

                              Enjoy your meals!

                              Press [return] to go back to main screen :
                              """, terminator: " ")

                    choice = readLine()!.lowercased()
                    print()

                    if(choice == ""){
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

//var cafeteria = ["Tuku-Tuku", "Gotri", "Madam Lie", "Kopte", "Xiang Jia"]
//var menuTuku = ["Tahu Isi", "Nasi Kuning", "Nasi Campur", "Air Mineral", "Popmie Goreng"]
//var hargaTuku = [5000, 15000, 20000, 3000, 7000]
//var menuGotri = ["Beef Rendang", "Fried Rice", "Gotri Signature", "Mala Chicken", "Es Lychee"]
//var hargaGotri = [30000, 37500, 20000, 25000, 15000]
//var menuMadam = ["Nasi Ayam Geprek", "Nasi Ayam Bakar", "Nasi Goreng", "Es Teh Manis", "Mie Goreng"]
//var hargaMadam = [20000, 25000, 30000, 5000, 25000]
//var menuKopte = ["Kopi Tarik Kopte", "Es Cincau", "Teh Kundur", "Milo Dinosaur", "Toast Kaya Butter"]
//var hargaKopte = [15000, 17000, 14000, 16000, 18000]
//var menuXJ = ["Mie Kosong Selatpanjang", "Nasi Ayam Hainan", "Mie Ayam Kobe", "Kopi O", "Teh Tarik"]
//var hargaXJ = [25000, 30000, 25000, 12000, 16000]
//var mainChoice:String = ""
//var cafeChoice:String = ""
//var harga:Int = 0
//var payment:Int = 0
//var inputCart:String = ""
//var money:String = ""
//var change:Int = 0
//var re:String = ""
//var cart:[(String, String, Int)] = []
//
//func mainScreen(){
//    print("""
//          Welcome to UC-Walk Cafeteria 👨🏻‍🍳👩🏻‍🍳
//          Please choose cafeteria:
//
//          """)
//
//    for (index, cafe) in cafeteria.enumerated() {
//        print("[\(index + 1)] \(cafe)")
//    }
//
//    print("""
//          -
//          [S]hopping cart
//          [Q]uit
//          Your cafeteria choice?
//          """, terminator: " ")
//
//    mainChoice = readLine()!.lowercased()
//
//    print()
//
//    switch mainChoice{
//    case "1" :
//        tukuTuku()
//
//    case "2" :
//        gotri()
//
//    case "3" :
//        madamLie()
//
//    case "4" :
//        kopte()
//
//    case "5" :
//        xiangJia()
//
//    case "s" :
//        cartScreen()
//
//    case "q" :
//        exit(0)
//
//    default :
//        mainScreen()
//    }
//}
//
//func tukuTuku(){
//    print("""
//          Hi, welcome back to Tuku-Tuku!
//          What would you like to order?
//
//          """)
//
//    for (index, menu) in menuTuku.enumerated() {
//        print("[\(index + 1)] \(menu)")
//    }
//
//    print("""
//          -
//          [B]ack to Main Menu
//          Your menu choice?
//          """, terminator: " ")
//
//    cafeChoice = readLine()!.lowercased()
//
//    print()
//
//    switch cafeChoice{
//    case "1" :
//        print("""
//              \(menuTuku[0]) @ \(hargaTuku[0].formatted())
//              How many \(menuTuku[0]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            tukuTuku()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            tukuTuku()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuTuku[0])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[0], menuTuku[0], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaTuku[0] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            tukuTuku()
//        }
//
//    case "2" :
//        print("""
//              \(menuTuku[1]) @ \(hargaTuku[1].formatted())
//              How many \(menuTuku[1]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            tukuTuku()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            tukuTuku()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuTuku[1])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[0], menuTuku[1], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaTuku[1] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            tukuTuku()
//        }
//
//    case "3" :
//        print("""
//              \(menuTuku[2]) @ \(hargaTuku[2].formatted())
//              How many \(menuTuku[2]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            tukuTuku()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            tukuTuku()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuTuku[2])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[0], menuTuku[2], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaTuku[2] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            tukuTuku()
//        }
//
//    case "4" :
//        print("""
//              \(menuTuku[3]) @ \(hargaTuku[3].formatted())
//              How many \(menuTuku[3]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            tukuTuku()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            tukuTuku()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuTuku[3])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[0], menuTuku[3], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaTuku[3] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            tukuTuku()
//        }
//
//    case "5" :
//        print("""
//              \(menuTuku[4]) @ \(hargaTuku[4].formatted())
//              How many \(menuTuku[4]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            tukuTuku()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            tukuTuku()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuTuku[4])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[0], menuTuku[4], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaTuku[4] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            tukuTuku()
//        }
//
//    case "b" :
//        mainScreen()
//
//    default :
//        tukuTuku()
//    }
//}
//
//func gotri(){
//    print("""
//          Hi, welcome back to Gotri!
//          What would you like to order?
//
//          """)
//
//    for (index, menu) in menuGotri.enumerated() {
//        print("[\(index + 1)] \(menu)")
//    }
//
//    print("""
//          -
//          [B]ack to Main Menu
//          Your menu choice?
//          """, terminator: " ")
//
//    cafeChoice = readLine()!.lowercased()
//
//    print()
//
//    switch cafeChoice{
//    case "1" :
//        print("""
//              \(menuGotri[0]) @ \(hargaGotri[0].formatted())
//              How many \(menuGotri[0]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            gotri()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            gotri()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuGotri[0])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[1], menuGotri[0], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaGotri[0] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            gotri()
//        }
//
//    case "2" :
//        print("""
//              \(menuGotri[1]) @ \(hargaGotri[1].formatted())
//              How many \(menuGotri[1]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            gotri()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            gotri()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuGotri[1])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[1], menuGotri[1], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaGotri[1] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            gotri()
//        }
//
//    case "3" :
//        print("""
//              \(menuGotri[2]) @ \(hargaGotri[2].formatted())
//              How many \(menuGotri[2]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            gotri()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            gotri()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuGotri[2])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[1], menuGotri[2], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaGotri[2] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            gotri()
//        }
//
//    case "4" :
//        print("""
//              \(menuGotri[3]) @ \(hargaGotri[3].formatted())
//              How many \(menuGotri[3]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            gotri()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            gotri()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuGotri[3])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[1], menuGotri[3], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaGotri[3] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            gotri()
//        }
//
//    case "5" :
//        print("""
//              \(menuGotri[4]) @ \(hargaGotri[4].formatted())
//              How many \(menuGotri[4]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            gotri()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            gotri()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuGotri[4])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[1], menuGotri[4], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaGotri[4] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            gotri()
//        }
//
//    case "b" :
//        mainScreen()
//
//    default :
//        gotri()
//    }
//}
//
//func madamLie(){
//    print("""
//          Hi, welcome back to Madam Lie!
//          What would you like to order?
//          """)
//
//    for (index, menu) in menuMadam.enumerated() {
//        print("[\(index + 1)] \(menu)")
//    }
//
//    print("""
//          -
//          [B]ack to Main Menu
//          Your menu choice?
//          """, terminator: " ")
//
//    cafeChoice = readLine()!.lowercased()
//
//    print()
//
//    switch cafeChoice{
//    case "1" :
//        print("""
//              \(menuMadam[0]) @ \(hargaMadam[0].formatted())
//              How many \(menuMadam[0]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            madamLie()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            madamLie()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuMadam[0])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[2], menuMadam[0], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaMadam[0] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            madamLie()
//        }
//
//    case "2" :
//        print("""
//              \(menuMadam[1]) @ \(hargaMadam[1].formatted())
//              How many \(menuMadam[1]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            madamLie()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            madamLie()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuMadam[1])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[2], menuMadam[1], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaMadam[1] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            madamLie()
//        }
//
//    case "3" :
//        print("""
//              \(menuMadam[2]) @ \(hargaMadam[2].formatted())
//              How many \(menuMadam[2]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            madamLie()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            madamLie()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuMadam[2])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[2], menuMadam[2], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaMadam[2] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            madamLie()
//        }
//
//    case "4" :
//        print("""
//              \(menuMadam[3]) @ \(hargaMadam[3].formatted())
//              How many \(menuMadam[3]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            madamLie()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            madamLie()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuMadam[3])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[2], menuMadam[3], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaMadam[3] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            madamLie()
//        }
//
//    case "5" :
//        print("""
//              \(menuMadam[4]) @ \(hargaMadam[4].formatted())
//              How many \(menuMadam[4]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            madamLie()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            madamLie()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuMadam[4])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[2], menuMadam[4], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaMadam[4] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            madamLie()
//        }
//
//    case "b" :
//        mainScreen()
//
//    default :
//        madamLie()
//    }
//}
//
//func kopte(){
//    print("""
//          Hi, welcome back to Kopte!
//          What would you like to order?
//          """)
//
//    for (index, menu) in menuKopte.enumerated() {
//        print("[\(index + 1)] \(menu)")
//    }
//
//    print("""
//          -
//          [B]ack to Main Menu
//          Your menu choice?
//          """, terminator: " ")
//
//    cafeChoice = readLine()!.lowercased()
//
//    print()
//
//    switch cafeChoice{
//    case "1" :
//        print("""
//              \(menuKopte[0]) @ \(hargaKopte[0].formatted())
//              How many \(menuKopte[0]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            kopte()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            kopte()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuKopte[0])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[3], menuKopte[0], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaKopte[0] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            kopte()
//        }
//
//    case "2" :
//        print("""
//              \(menuKopte[1]) @ \(hargaKopte[1].formatted())
//              How many \(menuKopte[1]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            kopte()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            kopte()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuKopte[1])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[3], menuKopte[1], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaKopte[1] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            kopte()
//        }
//
//    case "3" :
//        print("""
//              \(menuKopte[2]) @ \(hargaKopte[2].formatted())
//              How many \(menuKopte[2]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            kopte()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            kopte()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuKopte[2])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[3], menuKopte[2], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaKopte[2] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            kopte()
//        }
//
//    case "4" :
//        print("""
//              \(menuKopte[3]) @ \(hargaKopte[3].formatted())
//              How many \(menuKopte[3]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            kopte()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            kopte()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuKopte[3])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[3], menuKopte[3], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaKopte[3] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            kopte()
//        }
//
//    case "5" :
//        print("""
//              \(menuKopte[4]) @ \(hargaKopte[4].formatted())
//              How many \(menuKopte[4]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            kopte()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            kopte()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuKopte[4])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[3], menuKopte[4], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaKopte[4] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            kopte()
//        }
//
//    case "b" :
//        mainScreen()
//
//    default :
//        kopte()
//    }
//}
//
//func xiangJia(){
//    print("""
//          Hi, welcome back to Xiang Jia!
//          What would you like to order?
//          """)
//
//    for (index, menu) in menuXJ.enumerated() {
//        print("[\(index + 1)] \(menu)")
//    }
//
//    print("""
//          -
//          [B]ack to Main Menu
//          Your menu choice?
//          """, terminator: " ")
//
//    cafeChoice = readLine()!.lowercased()
//
//    print()
//
//    switch cafeChoice{
//    case "1" :
//        print("""
//              \(menuXJ[0]) @ \(hargaXJ[0].formatted())
//              How many \(menuXJ[0]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            xiangJia()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            xiangJia()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuXJ[0])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[4], menuXJ[0], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaXJ[0] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            xiangJia()
//        }
//
//    case "2" :
//        print("""
//              \(menuXJ[1]) @ \(hargaXJ[1].formatted())
//              How many \(menuXJ[1]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            xiangJia()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            xiangJia()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuXJ[1])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[4], menuXJ[1], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaXJ[1] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            xiangJia()
//        }
//
//    case "3" :
//        print("""
//              \(menuXJ[2]) @ \(hargaXJ[2].formatted())
//              How many \(menuXJ[2]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            xiangJia()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            xiangJia()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuXJ[2])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[4], menuXJ[2], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaXJ[2] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            xiangJia()
//        }
//
//    case "4" :
//        print("""
//              \(menuXJ[3]) @ \(hargaXJ[3].formatted())
//              How many \(menuXJ[3]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            xiangJia()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            xiangJia()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuXJ[3])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[4], menuXJ[3], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaXJ[3] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            xiangJia()
//        }
//
//    case "5" :
//        print("""
//              \(menuXJ[4]) @ \(hargaXJ[4].formatted())
//              How many \(menuXJ[4]) do you want to buy?
//              """, terminator: " ")
//        jumlahBeli = readLine()!
//        if !(jumlahBeli.range(of: #"^\d+$"#, options: .regularExpression) != nil) {
//            print("\nYou can only input number\n")
//            xiangJia()
//        }
//
//        if((Int(jumlahBeli) ?? 0) <= 0){
//            print()
//            xiangJia()
//        }
//        else{
//            print("Thankyou for ordering.\n")
//
//            var double: Bool = false
//            var indexcart = 0
//            for (index, scart) in cart.enumerated(){
//                if(scart.1.contains("\(menuXJ[4])")){
//                    double = true
//                    indexcart = index
//                }
//            }
//            if double{
//                cart[indexcart].2 += Int(jumlahBeli) ?? 0
//            }
//            else{
//                cart.append((cafeteria[4], menuXJ[4], Int(jumlahBeli) ?? 0))
//            }
//
//            harga = hargaXJ[4] * (Int(jumlahBeli) ?? 0)
//
//            payment += harga
//
//            xiangJia()
//        }
//
//    case "b" :
//        mainScreen()
//
//    default :
//        xiangJia()
//    }
//}
//
//func orderScreen(){
//    print("""
//
//          """)
//}
//
//func cartScreen(){
//    if cart.isEmpty{
//        print("Your cart is empty.\n")
//        mainScreen()
//    }
//    else{
//        for cafe in cafeteria{
//            if cart.contains(where: {$0.0 == cafe}){
//                print("Your order from \(cafe) :")
//            }
//            for scart in cart{
//                if scart.0 == cafe {
//                    print("- \(scart.1) x\(scart.2)")
//                }
//            }
//        }
//    }
//    print("""
//
//              Press [B] to go back
//              Press [P] to pay / checkout
//              Your choice?
//              """, terminator: " ")
//    inputCart = readLine()!.lowercased()
//
//    print()
//
//    switch inputCart{
//    case "b" :
//        mainScreen()
//
//    case "p" :
//        checkoutScreen()
//
//    default :
//        cartScreen()
//    }
//}
//
//
//func checkoutScreen(){
//    print("""
//          Your total order : \(payment.formatted())
//          Enter the amount of your money :
//          """, terminator: " ")
//    money = readLine()!
//
//    print()
//
//    if(money == ""){
//        print("Please enter your payment.\n")
//        checkoutScreen()
//    }
//    else {
//        if let mon = Int(money) {
//            if (mon == 0){
//                print("Payment can't be zero.\n")
//                checkoutScreen()
//            }
//            else if (mon < 0) {
//                print("Please enter a valid amount.\n")
//                checkoutScreen()
//            } else if (mon > 0) {
//                if(mon < payment){
//                    checkoutScreen()
//                }
//                else if(mon >= payment){
//                    print("""
//                              Your total order : \(payment.formatted())
//                              You pay : \(mon.formatted())
//                              """)
//
//                    change = mon - payment
//
//                    cart = []
//                    payment = 0
//
//                    print("""
//                              Change : \(change.formatted())
//
//                              Enjoy your meals!
//
//                              Press [return] to go back to main screen :
//                              """, terminator: " ")
//
//                    re = readLine()!.lowercased()
//
//                    print()
//
//                    if(re == ""){
//                        mainScreen()
//                    }
//                    else{
//                        checkoutScreen()
//                    }
//                }
//            }
//        } else {
//            print("Please enter a valid amount.\n")
//            checkoutScreen()
//        }
//    }
//}
//
//mainScreen()
