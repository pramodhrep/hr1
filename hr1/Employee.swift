//
//  Employee.swift
//  hr1
//
//  Created by Pramod Repaka on 2019-06-21.
//  Copyright © 2019 Pramod Repaka. All rights reserved.
//

public class Employee{
    //    Properties or Instance variables or field
    
    public var Name: String = ""
    public var Age : Int = 0
    
    //init is the name of the constructor in swift instead of the class name in other languages
    public init(){
        Name = ""
        Age = 0
    }
    
    //Method Overloading
    public init(_ pName:String,_ pAge: Int){
        Name = pName
        Age = pAge
    }
    
//    Destructor - Cannot have multiple destructors... Can have only one
//    deinit {
//        conn = nil
//    }
//
    //    Methods or Behaviour or Functions
    
    func calcBirthYear() -> Int{
        return 2019 - self.Age //Self is like this in Java
    }
//    polymorphism is a method defined in a parent class is redefined in a derived class
    
    //this method is overrided in the fulltime class
    public func calcEarnings() -> Int {
        return 100
    }

}
