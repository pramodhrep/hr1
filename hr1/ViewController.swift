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
    @IBOutlet var txtSalary: UITextField!
    @IBOutlet var txtBonus: UITextField!
    @IBOutlet var txtRate: UITextField!
    @IBOutlet var txtHours: UITextField!
    @IBOutlet var txtCBPT: UITextField!
    @IBOutlet var txtFBPT: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAdd(_ sender: UIButton) {
        var ft1 : FullTime
        var pt1 : PartTime
        var cbpt1 : CommBasedPartTime
        var fbpt1 : FixedBasedPartTime
        //e1 = Employee() //-- Default constructor
        
        if !((txtName.text?.isEmpty)! || (txtAge.text?.isEmpty)!){
        
//            e1.Name = txtName.text!
//            e1.Age = Int(txtAge.text!)!
            
            //Using the class
//            e1 = Employee(txtName.text!, Int(txtAge.text!)!)
//            e1 = FullTime(txtName.text!, Int(txtAge.text!)!, Int(txtSalary.text!)!, Int(txtBonus.text!)!)
            if txtSalary.text! == "" && txtBonus.text! == ""{
                // this is part time
                if txtCBPT.text! == "" && txtFBPT.text! == "" {
                pt1 = PartTime(txtName.text!, Int(txtAge.text!)!, Int(txtRate.text!)!, Int(txtHours.text!)!)
                aEmp.append(pt1)
                }else if txtFBPT.text! == "" && txtCBPT.text! != ""{
                    // this is CBPT
                cbpt1 = CommBasedPartTime(txtName.text!,Int(txtAge.text!)!, Int(txtRate.text!)!, Int(txtHours.text!)!, Int(txtCBPT.text!)!)
                aEmp.append(cbpt1)
                }else if txtFBPT.text! != "" && txtCBPT.text! == ""{
                    // this is FBPT
                fbpt1 = FixedBasedPartTime(txtName.text!,Int(txtAge.text!)!, Int(txtRate.text!)!, Int(txtHours.text!)!, Int(txtFBPT.text!)!)
                aEmp.append(fbpt1)
                }
            }
            
            if txtRate.text! == "" && txtHours.text! == ""{
                // this is a full time
                ft1 = FullTime(txtName.text!, Int(txtAge.text!)!, Int(txtSalary.text!)!, Int(txtBonus.text!)!)
                aEmp.append(ft1)
            }
            
//            aEmp.append(e1)
            
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
            var earn = 0
            var totalPayroll = 0
            
            for i in aEmp{
                
                var earn = i.calcEarnings() //calcEarning is a polymorphysm method
                totalPayroll = totalPayroll + earn
                
                if i is FullTime{
                    
                    var ft1 : FullTime = (i as! FullTime)
                    
                    msg = "Name: \(ft1.Name) Age: \(ft1.Age) Salary: \(ft1.Salary) Bonus: \(ft1.Bonus) Earnings: \(earn) \n "
                    txtList.text += msg
                }
                
                if i is PartTime{
                    var pt1 : PartTime = (i as! PartTime)
                    
                    msg = "Name: \(pt1.Name) Age: \(pt1.Age) Rate: \(pt1.Rate) Hours: \(pt1.NHours) Earnings: \(earn) \n "
                    txtList.text += msg
                    
                }
                
            }
            txtList.text += "***** Total payroll:  \(totalPayroll) ***** \n"
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
                
                txtName.text = i.Name
                txtAge.text = String(i.Age)
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
    
    @IBAction func btnClear(_ sender: UIButton) {
        txtName.text = ""
        txtAge.text = ""
        txtNameSearch.text = ""
        txtList.text = ""
        txtSalary.text = ""
        txtBonus.text = ""
        txtStatus.text = "" 
    }
    
}

// Search .. loop through array and see if the data is found or not found and display

