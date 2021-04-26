//
//  ViewController.swift
//  TODOLIST
//
//  Created by Amira on 10/11/20.
//  Copyright © 2020 Amira. All rights reserved.
//

import UIKit

class TODOLIST: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var arr:[gettodo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        
    }

//MARK:-IBAction
    
    
    
    @IBAction func gotonav(_ sender: UIBarButtonItem) {
            
            let addvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController2")as! ViewController2
            self.navigationController?.pushViewController(addvc, animated: true)
       addvc.delegate  = self
        
            }
    @objc func upbtnpressed(_ sender: UIButton){
        if sender.tag != 0{
            arr.swapAt(sender.tag, sender.tag-1)
            tableview.reloadData()
        }
        
        
    }
    @objc func downbtnpressed(_ sender: UIButton){
         
        if sender.tag != arr.count {
                   arr.swapAt(sender.tag, sender.tag+1)
            tableview.reloadData()
               }
               
       }
   
        
        //  MARK:-Helper Functions
    
    func setupUI(){
        tableview.tableFooterView = UIView()
        tableview.separatorStyle = .none
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
}

extension TODOLIST:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "amira", for: indexPath) as! TableViewCell
        cell.lblcell.text  = arr[indexPath.row].list
        cell.upbtn.tag = indexPath.row
        cell.downbtn.tag = indexPath.row
        cell.upbtn.addTarget(self, action: #selector(self.upbtnpressed(_:)), for:.touchUpInside)
        
        cell.downbtn.addTarget(self, action: #selector(self.downbtnpressed(_:)), for:.touchUpInside)
return cell    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return constants.SCREENHEIGHT/8
    }
}

extension TODOLIST : addtodo{
    func additems(item: gettodo) {
        arr.append(item)
        tableview.reloadData()
    }
    
   
    }
    
    
   
  
    
   
    
    
    
   
    
    

    

