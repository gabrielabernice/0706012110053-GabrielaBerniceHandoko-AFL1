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
