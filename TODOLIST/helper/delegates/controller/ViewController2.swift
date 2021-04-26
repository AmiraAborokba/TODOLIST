//
//  ViewController2.swift
//  TODOLIST
//
//  Created by Amira on 10/11/20.
//  Copyright © 2020 Amira. All rights reserved.
//

import UIKit
protocol  addtodo {
    func additems(item:gettodo)
}


class ViewController2: UIViewController {

    
   
        
    
    
    
    @IBOutlet weak var txttfield: UITextField!
    
    @IBOutlet weak var addbtn: UIButton!{
        didSet{
            addbtn.layer.cornerRadius = addbtn.frame.height/5
           addbtn.layer.borderColor = #colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1)
          addbtn.layer.borderWidth = 1        }
    }
    //MARK:-Constants
    
    var delegate:addtodo?
    var mygetlist:gettodo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//MARk-:OutLet
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
       delegate?.additems(item: mygetlist!)
    }
//MARK:-IBAction
    
    
   
    @IBAction func addbtnpressed(_ sender: Any) {
        if txttfield.text != ""{
            mygetlist = gettodo(list:txttfield.text!)
            
            self.navigationController?.popViewController(animated: true)
        }else{
            
            let alert = UIAlertController(title: "error", message: "no text found", preferredStyle: .alert)
            let alertaction = UIAlertAction(title: "cancle", style: .cancel, handler: nil)
            let alertaction2 = UIAlertAction(title: "Ok", style: .default) { (action) in
                self.dismiss(animated: true, completion: nil)
            }
            let alertaction3 = UIAlertAction(title: "des", style:.destructive) { (action) in
                self.dismiss(animated: true, completion: nil)
            }
            
            alert.addAction(alertaction)
            alert.addAction(alertaction2)
            alert.addAction(alertaction3)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    
    
    //MARK:-HELPER FUNCTION

}
