//
//  AppDelegate.swift
//  Lesson 5
//
//  Created by Дмитрий on 26.07.2021.
//  Copyright © 2021 Dimitriy. All rights reserved.
//

protocol Car{
    func canDrive() -> Bool
}

class SportCar: Car {
    var wheels: Int
    var stateEngine: Bool
    var brand: String
    
    init(wheels: Int, stateEngine: Bool, brand: String) {
        self.wheels = wheels
        self.stateEngine = stateEngine
        self.brand = brand
    }
    
    func canDrive() -> Bool {
        if wheels != 4{
            print("U have wrong number of wheels")
            return false
        } else {
            print("U can go! LETS GO!")
            return true
        }
    }
}

class Truck: Car {
    var maxFillTrunk: Int
    var fillTrunk: Int
    
    init(maxFillTrunk: Int, fillTrunk: Int) {
        self.fillTrunk = fillTrunk
        self.maxFillTrunk = maxFillTrunk
    }
    func differenceFill(){
        let dif = maxFillTrunk - fillTrunk
        print ("U havent \(dif) kg. luggage")
    }
    
    func canDrive() -> Bool {
        if fillTrunk <= maxFillTrunk {
            print("U can drive")
            return true
        } else {
            print("Ur luggage too big")
            return false
        }
    }
}

extension SportCar{
    func doesWorkCar() -> Bool {
        if stateEngine == true{
            print("Car is worked")
            return true
        } else {
            print("Turn on engine!")
            return false
        }
    }
}

extension SportCar: CustomStringConvertible{
    var description: String {
        return String(describing: brand)
    }
}


let car1 = SportCar(wheels: 4, stateEngine: true, brand: "AUDI")
let car2 = SportCar(wheels: 3, stateEngine: false, brand: "OPEL")
Car.canDrive(<#Car#>)
Car.stateEngine
Car.brand
Car1.wheels
Car2.brand
Car2.stateEngine
Car2.doesWorkCar()
Car2.Wheels



let truck1 = Truck(maxFillTrunk: 250, fillTrunk: 180)
let truck2 = Truck(maxFillTrunk: 150, fillTrunk: 200)
truck1.differenceFill()
truck1.canDrive()
truck2.canDrive()

