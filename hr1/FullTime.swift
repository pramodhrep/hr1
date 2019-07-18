//
//  FullTime.swift
//  hr1
//
//  Created by Pramod Repaka on 2019-07-05.
//  Copyright © 2019 Pramod Repaka. All rights reserved.
//

import Foundation
// Inheriting from the Employee class
public class FullTime : Employee{
//    public init(){   // Since we have inherited this will be an error and we need to override
//        
//    }
    
    public var Salary : Int
    public var Bonus : Int
    
    public override init(){
        // Always try to initialize inside the constructor
        Salary = 0
        Bonus = 0
        //Initialize the c=variables from the parent class
        super.init()
        
        
    }
    
    public init(_ pName: String,_ pAge: Int,_ pSalary : Int,_ pBonus : Int){
        Salary = pSalary
        Bonus = pBonus
        super.init(pName, pAge)
        
    }
    
//  Method overriding
    public override func calcEarnings() -> Int {
        return Salary + Bonus;
    }
    
    
}//end of class
