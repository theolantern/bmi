//
//  ViewController.swift
//  ios 13610345 week10 project2
//
//  Created by oomsin on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    //Global Variable คือ ตะวแปรตรงกลางที่ใช้ร่วมกันใน Class ฟังก์ชันอื่นสามารถเรียกใช้ได้
//    var bmiValueCal = "0"
    
    // เรียกใช้ struct #1 ประกาศตัวแปรชนิด struct
    var calculatorBrain = CalculateBrain()
    
    @IBOutlet weak var sliderHeight: UISlider!
    
    @IBOutlet weak var heightShow: UILabel!
    
    @IBOutlet weak var sliderWeight: UISlider!
   
    @IBOutlet weak var weightShow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderPressed(_ sender: UISlider) {
        let height = String(format:"%.2f",sender.value)
        heightShow.text = "\(height)M."
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(sender.value)
        
//        print(String(format:"%.2f",sender.value))
//        print(String(format:"%.0f",sender.value))
        let weight = String(format:"%.0f",sender.value)
        weightShow.text = "\(weight)kg."
    }
    
    
    @IBAction func calculatePressed(_ sender: Any) {
        let heightFromUser = sliderHeight.value
        let weightFromUser = sliderWeight.value
        //Local Variable
        //let bmi = weight / (height * height)
        //print(bmi)
        
//        bmiValueCal = String(format: "%1f", weight / (height * height))
        // เรียกใช้ struct #2 เรียกฟังก์ชันของ struct โดยการส่งค่าที่ต้องการไป
        calculatorBrain.calculateBMI(height: heightFromUser, weight: weightFromUser)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    @IBAction func heartPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToCredit", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
//            destinationVC.bmiValue = bmiValueCal
            // ชื่อ object.ชื่อของตัวแปร = ค่าที่ต้องการ set ให้
            // เรียกใช้ struct #3 เรียกใบ้ function getBMIValue() ส่งกลับมาเป็น String ซึ่งเป็นชนิดเดียวกับที่ .bmiValue ต้องการ
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            
        
        }
        if segue.identifier == "goToCredit" {
            let CreditVC = segue.destination as! CreditViewController
            CreditVC.fullname = "Oomsin Chanopas"
        }
    }
}

