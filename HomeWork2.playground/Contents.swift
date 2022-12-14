
import Foundation

class Zoo {
    var animals = [Animal]()
    var caretakers = [Caretaker]()
    var dailyWaterLimit = 0
    var bitBudget = 0
    
    func addIncomeAndExpenses(income: Int, expenses: Int) {
        bitBudget += income
        bitBudget -= expenses
        dailyWaterLimit += 100
    }
    
    func paySalaries() {
        for caretaker in caretakers {
            bitBudget -= caretaker.salary
        }
    }
    func waterAnimals() {
         for animal in animals {
             dailyWaterLimit -= animal.waterConsumption
         }
     }
}

class Animal {
    var name: String
    var waterConsumption: Int
    var sound: String
    var keeper: Caretaker?
    
    init(name: String, waterConsumption: Int, sound: String) {
        self.name = name
        self.waterConsumption = waterConsumption
        self.sound = sound
    }
    
   
    
}

class Caretaker {
    var name: String
    var salary: Int
    
    init(name: String, salary: Int) {
        self.name = name
        self.salary = salary
    }
}

let zoo = Zoo()
zoo.addIncomeAndExpenses(income: 1000, expenses: 500)

let caretaker = Caretaker(name: "Emin", salary: 100)
zoo.caretakers.append(caretaker)

let animal = Animal(name: "Lion", waterConsumption: 200, sound: "Roar")
zoo.animals.append(animal)

animal.keeper = caretaker

zoo.paySalaries
