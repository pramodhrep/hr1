//
//  PartTime.swift
//  hr1
//
//  Created by Pramod Repaka on 2019-07-12.
//  Copyright © 2019 Pramod Repaka. All rights reserved.
//

import Foundation

public class PartTime : Employee{
    
    public var Rate : Int
    public var NHours : Int
    
    public override init(){
        // Always try to initialize inside the constructor
        Rate = 0
        NHours = 0
        //Initialize the variables from the parent class
        super.init()
        
    }
    
    public init(_ pName: String,_ pAge: Int,_ pRate : Int,_ pHours : Int){
        Rate = pRate
        NHours = pHours
        super.init(pName, pAge)
    }
    
    //  Method overriding
    public override func calcEarnings() -> Int {
        return Rate * NHours;
    }
    
} // end of class
