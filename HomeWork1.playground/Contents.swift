


import UIKit

protocol Employee {
    var name: String { get set }
    var age: Int { get set }
    var maritalStatus: Bool { get set }
    var salary: Int { get set }
}

class Junior: Employee {
    var name: String
    var age: Int
    var maritalStatus: Bool
    var salary: Int
    
    init(name: String, age: Int, maritalStatus: Bool, salary: Int) {
        self.name = name
        self.age = age
        self.maritalStatus = maritalStatus
        self.salary = salary
    }
}

class Mid: Employee {
    var name: String
    var age: Int
    var maritalStatus: Bool
    var salary: Int
    
    init(name: String, age: Int, maritalStatus: Bool, salary: Int) {
        self.name = name
        self.age = age
        self.maritalStatus = maritalStatus
        self.salary = salary
    }
}

class Senior: Employee {
    var name: String
    var age: Int
    var maritalStatus: Bool
    var salary: Int
    
    init(name: String, age: Int, maritalStatus: Bool, salary: Int) {
        self.name = name
        self.age = age
        self.maritalStatus = maritalStatus
        self.salary = salary
    }
}

class Company {
    var name: String
    var employee: [Employee]
    var budget: Int
    var yearOfEstablishment: Int
    
    init(name: String, employee: [Employee], budget: Int, yearOfEstablishment: Int) {
        self.name = name
        self.employee = employee
        self.budget = budget
        self.yearOfEstablishment = yearOfEstablishment
    }
    func addIncome(income: Int) {
        budget += income
    }
    func addEmployee(employee: Employee) {
        self.employee.append(employee)
    }


    

    func calculateSalary() {
        for var i in employee {
            if i is Junior {
                i.salary = i.age * 1 * 1000
            } else if i is Mid {
                i.salary = i.age * 2 * 1000
            } else if i is Senior {
                i.salary = i.age * 3 * 1000
            }
        }
    }
    func paySalary() {
        for i in employee {
            budget -= i.salary
        }
     


    }
}

var company = Company(name: "VakıfBank", employee: [], budget: 1000000, yearOfEstablishment: 1954)

var junior = Junior(name: "M.Emin Saygı", age: 23, maritalStatus: false, salary: 0)

company.addEmployee(employee: junior)

company.calculateSalary()
company.employee
junior.salary



