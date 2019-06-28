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
    
    //    Methods or Behaviour or Functions
    
    func calcBirthYear() -> Int{
        return 2019 - self.Age //Self is like this in Java
    }
}
