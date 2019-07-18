//
//  CommBasedPartTime.swift
//  hr1
//
//  Created by Pramod Repaka on 2019-07-17.
//  Copyright © 2019 Pramod Repaka. All rights reserved.
//

import Foundation

public class CommBasedPartTime : PartTime{
    
    public var Commision : Float
    
    public override init() {
        Commision = 0
        super.init()
    }
    
    public init(_ pName: String,_ pAge: Int,_ pRate : Int,_ pHours : Int, _ pCommision : Int){
        Commision = (Float(pCommision)/100)+1
        super.init(pName, pAge, pRate, pHours)
    }
    
    public override func calcEarnings() -> Int {
        return Int(Float(Rate * NHours) * Commision)
    }
    
}
