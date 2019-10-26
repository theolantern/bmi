//
//  ViewController.swift
//  ios 13610337 week10 project2
//
//  Created by Metakan on 19/10/2562 BE.
//  Copyright © 2562 Metakan. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    //คือตัวแปรตรงกลางที่ใช้ร่วมกันใน Class ฟังก์ชั่นอื่นสามารถเรียกใช้ได้
    var bmiValueCal = "0"
    //เรียกใช้ struct #1 ประกาศตัวแปรชนิด struct
    var calculatorBrain = CalculateBrain()
    
    @IBOutlet weak var sliderHeight: UISlider!
    
    @IBOutlet weak var sliderWidght: UISlider!
    
    
    @IBOutlet weak var hightLabel: UILabel!
    
    @IBOutlet weak var widghtLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderPressed(_ sender: UISlider) {

        
        let he = String(format:"%.2f",sender.value)
        hightLabel.text = "\(he)M."
    }
    
    @IBAction func widghtSliderChanged(_ sender: UISlider) {
//        print(sender.value)
//        print(String(format:"%.0.2",sender.value))
        
        let weight = String(format:"%.0f",sender.value)
            widghtLabel.text = "\(weight)Kg."
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        let heightFrom = sliderHeight.value
        let weightFrom = sliderWidght.value
        
//        bmiValueCal = String(format: "%.1f",weight / (height * height))
        //เรียกใช้ struct #2 เรียกฟังก์ชั่น ของ struct
        calculatorBrain.calculateBMI(height: heightFrom,weight: weightFrom)
        
//        self.performSegue(withIdentifier: "goToResult", sender: self)
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            
           destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getcolor()
        
//             destinationVC.bmiValue = String(format:"%.2f",calculatorBrain.bmi)
            //ชื่อ obeject.ชื่อตัวแปร = ค่าที่ต้องการ set ให้
        }
        if segue.identifier == "goToCredit"{
            let CreditVC = segue.destination as!CreditViewController
            //เรียกใช้ struct #3 เรียกใช้ fuction
            CreditVC.fullname = "Metakan Nasin"
        }
    }//end func prepare
    
    @IBAction func heart(_ sender: Any) {
//        self.performSegue(withIdentifier: "goToCredit", sender: self)
         performSegue(withIdentifier: "goToCredit", sender: self)
    }
    
}//end class

