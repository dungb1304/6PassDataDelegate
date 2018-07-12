//
//  ViewController.swift
//  6PassDataDelegate
//
//  Created by DungB96 on 2018/06/11.
//  Copyright © 2018 DungB96. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Delegate {
    func sendData(data: String) {
        textLabel.text = data
    }
    

    
    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SecondViewController {
            viewController.del = self
        }
        
    }

}

