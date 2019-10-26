//
//  ResultViewController.swift
//  ios 13610345 week10 project2
//
//  Created by oomsin on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    //properties
    var bmiValue = "0.0"
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
