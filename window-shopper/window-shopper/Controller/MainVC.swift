//
//  ViewController.swift
//  window-shopper
//
//  Created by Carleton Snow on 8/26/17.
//  Copyright © 2017 Carleton Snow. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var piceTxt: CurrencyTxtField!
    
    @IBOutlet weak var resultlbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9667972922, green: 0.6526136994, blue: 0.1308378577, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        piceTxt.inputAccessoryView = calcBtn
        
        resultlbl.isHidden = true
        hoursLbl.isHidden = true
        
    }

    @objc func calculate(){
        if let wageTxt = wageTxt.text, let priceTxt = piceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultlbl.isHidden = false
                hoursLbl.isHidden = false
                resultlbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultlbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        piceTxt.text = ""
    }
    
}

