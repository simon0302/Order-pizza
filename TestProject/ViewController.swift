//
//  ViewController.swift
//  TestProject
//
//  Created by Simon Xu on 6/5/17.
//  Copyright © 2017 Simon Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Part 1 variables
    //submit order is the "next" button
    @IBOutlet weak var insertName: UITextField!
    @IBOutlet weak var insertEmail: UITextField!
    @IBOutlet weak var insertNumber: UITextField!
    @IBOutlet weak var insertAddress: UITextField!
    var inputName = ""
    var inputEmail = ""
    var inputNumber = ""
    var inputAddress = ""
    
    //part 2 variables
    @IBOutlet weak var breadType: UITextField!
    @IBOutlet weak var cheeseType: UITextField!
    @IBOutlet weak var topping1Type: UITextField!
    @IBOutlet weak var topping2Type: UITextField!
    @IBOutlet weak var sauceType: UITextField!
    @IBOutlet weak var topping3Type: UITextField!
    var inputBread = ""
    var inputTop1 = ""
    var inputTop2 = ""
    var inputSauce = ""
    var inputTop3 = ""
    var inputCheese = ""
    
    //part 3 variables
    @IBOutlet weak var submitOrder: UIButton!
    @IBOutlet weak var clientContactText: UILabel!
    @IBOutlet weak var orderText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitOrderButtonTapped(_ sender: UIButton) {
        
        //checks if all the part 1 entries are complete
        if (insertName.text == "" && insertEmail.text == "" && insertNumber.text == "" && insertAddress.text == "") {
            
            let alert = UIAlertController(title: "Incomplete Field(s)", message: "Please go back and finish part 1", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        //checks if all the part 2 entries are complete
        if (breadType.text == "" && sauceType.text == "" && cheeseType.text == "" && topping1Type.text == "" && topping2Type.text == "" && topping3Type.text == "") {
            
            let alert = UIAlertController(title: "Incomplete Field(s)", message: "Please go back and finish part 2", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
      
         /*   insertName.text = inputName;
            insertEmail.text = inputEmail;
            insertNumber.text = inputNumber;
            insertAddress.text = inputAddress;
            breadType.text = inputBread;
            sauceType.text = inputSauce;
            cheeseType.text = inputCheese;
            topping1Type.text = inputTop1;
            topping2Type.text = inputTop2;
            topping3Type.text = inputTop3; */
        
      
            
            let orderNumber = Int(arc4random_uniform(100000)+10000)
            let alert = UIAlertController(title: "Order Successfully Placed", message: "Your order number is #\(orderNumber) \nClick 'RETURN' to go back", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "RETURN", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            insertName.text = "";
            insertEmail.text = "";
            insertNumber.text = "";
            insertAddress.text = "";
            breadType.text = "";
            sauceType.text = "";
            cheeseType.text = "";
            topping1Type.text = "";
            topping2Type.text = "";
            topping3Type.text = "";
        }
        
        
        
        
    }
    
    @IBAction func insertBreadField(_ sender: UITextField) {
        weak var bread: UITextField?
        inputBread = String(describing: bread)
      //  self.orderText.text = "A \(inputBread) with \(inputSauce) covered with \(inputCheese) all topped with \(inputTop1) , \(inputTop2), and \(inputTop3)."
    }
    
    @IBAction func insertSauceField(_ sender: UITextField) {
        weak var sauce: UITextField?
        inputSauce = String(describing: sauce)
      //  self.orderText.text = "A \(inputBread) with \(inputSauce) covered with \(inputCheese) all topped with \(inputTop1) , \(inputTop2), and \(inputTop3)."
    }
    
    @IBAction func insertCheeseField(_ sender: UITextField) {
        weak var cheese: UITextField?
        inputCheese = String(describing: cheese)
       // self.orderText.text = "A \(inputBread) with \(inputSauce) covered with \(inputCheese) all topped with \(inputTop1) , \(inputTop2), and \(inputTop3)."
    }
    
    @IBAction func inserttop1Field(_ sender: UITextField) {
        weak var top1: UITextField?
        inputTop1 = String(describing: top1)
       // self.orderText.text = "A \(inputBread) with \(inputSauce) covered with \(inputCheese) all topped with \(inputTop1) , \(inputTop2), and \(inputTop3)."
    }
    
    @IBAction func inserttop2Field(_ sender: UITextField) {
        weak var top2: UITextField?
        inputTop2 = String(describing: top2)
      //  self.orderText.text = "A \(inputBread) with \(inputSauce) covered with \(inputCheese) all topped with \(inputTop1) , \(inputTop2), and \(inputTop3)."
    }
    
    @IBAction func inserttop3Field(_ sender: UITextField) {
        weak var top3: UITextField?
        inputTop1 = String(describing: top3)
       // self.orderText.text = "A \(inputBread) with \(inputSauce) covered with \(inputCheese) all topped with \(inputTop1) , \(inputTop2), and \(inputTop3)."
    }
    
    @IBAction func insertNameField(_ sender: UITextField) {
        weak var name: UITextField?
        inputName = String(describing: name)
       // self.clientContactText.text = "\(inputName) \n \(inputEmail) \n \(inputNumber) \n \(inputAddress)"
    }
    
    @IBAction func insertEmailField(_ sender: UITextField) {
        weak var email: UITextField?
        inputEmail = String(describing: email)
       // self.clientContactText.text = "\(inputName) \n \(inputEmail) \n \(inputNumber) \n \(inputAddress)"
    }
    
    @IBAction func insertNumberField(_ sender: UITextField) {
        weak var number: UITextField?
        inputNumber = String(describing: number)
       // self.clientContactText.text = "\(inputName) \n \(inputEmail) \n \(inputNumber) \n \(inputAddress)"

    }

    @IBAction func insertAddressField(_ sender: UITextField) {
        weak var address: UITextField?
        inputAddress = String(describing: address)
       // self.clientContactText.text = "\(inputName) \n \(inputEmail) \n \(inputNumber) \n \(inputAddress)"
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

}
