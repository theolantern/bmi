//
//  CreditViewController.swift
//  ios 13610337 week10 project2
//
//  Created by Metakan on 19/10/2562 BE.
//  Copyright © 2562 Metakan. All rights reserved.
//

import UIKit

class CreditViewController: UIViewController {
    var fullname = "fulname"
    
    
    @IBOutlet weak var fullName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        fullName.text = fullname
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
