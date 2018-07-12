//
//  SecondViewController.swift
//  6PassDataDelegate
//
//  Created by DungB96 on 2018/06/11.
//  Copyright © 2018 DungB96. All rights reserved.
//

import UIKit

protocol Delegate {
    func sendData(data: String)
}

class SecondViewController: UIViewController {
    
    var del : Delegate?
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnDelegate(_ sender: UIButton) {
        if del != nil {
            if textField.text != nil {
                let text = textField.text
                del?.sendData(data: text!)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
    
}
