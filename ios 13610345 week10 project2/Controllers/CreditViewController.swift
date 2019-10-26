//
//  CreditViewController.swift
//  ios 13610345 week10 project2
//
//  Created by oomsin on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class CreditViewController: UIViewController {

    var fullname = "fullname"
    
    @IBOutlet weak var fullName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullName.text = fullname

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func backPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
