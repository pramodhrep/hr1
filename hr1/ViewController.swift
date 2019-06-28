//
//  ViewController.swift
//  hr1
//
//  Created by Pramod Repaka on 2019-06-21.
//  Copyright © 2019 Pramod Repaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var aEmp : [Employee] = []
    var msg : String = ""

    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtAge: UITextField!
    @IBOutlet var txtStatus: UILabel!
    @IBOutlet var txtList: UITextView!
    @IBOutlet var txtNameSearch: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAdd(_ sender: UIButton) {
        var e1 : Employee
        e1 = Employee()
        
        if !((txtName.text?.isEmpty)! || (txtAge.text?.isEmpty)!){
        
            e1.Name = txtName.text!
            e1.Age = Int(txtAge.text!)!
            
            aEmp.append(e1)
            
            txtStatus.text = "Employee Added!!!"
            txtStatus.textColor = UIColor.green
        }else{
            txtStatus.text = "Please enter all the details..."
            txtStatus.textColor = UIColor.red
        }
    }
    
    @IBAction func btnList(_ sender: UIButton) {
        
        let size = aEmp.count
        
        if size != 0 {
        txtList.text = ""
        
        for i in aEmp{
            
            msg = "Name: \(i.Name) Age: \(i.Age) \n"
            txtList.text += msg
            
        }
        } else{
            txtStatus.text = "No employees to display"
            txtStatus.textColor = UIColor.red
        }
        
    }
    
    @IBAction func btnSearch(_ sender: UIButton) {
        
        if !((txtNameSearch.text?.isEmpty)!){
        msg = ""
        for i in aEmp{
            
            if i.Name == txtNameSearch.text! {
                
                msg = "\(i.Name) is a valid employee."
                txtStatus.textColor = UIColor.green
                break
            }
        }
        if msg == "" {
            msg = "\(txtNameSearch.text!) is not an employee."
            txtStatus.textColor = UIColor.red
        }
        txtStatus.text = msg
        }else{
            txtStatus.text = "Please enter the employee name to search"
            txtStatus.textColor = UIColor.red
        }
    }
    
    
}

// Search .. loop through array and see if the data is found or not found and display

