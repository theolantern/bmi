//
//  CalculateBrain.swift
//  ios 13610337 week10 project2
//
//  Created by Metakan on 19/10/2562 BE.
//  Copyright © 2562 Metakan. All rights reserved.
//


import UIKit
//UI User Interface ส่วนที่เกี่ยวข้องกับการเชื่อมต่อผู้ใช้

//KIt ชุดเครื่องมือ

//struct จะเป็นแบบ Pass by value คือ เหมือนก็อปปี้แยกกันคนละอัน แก้กับอันใดอันหนึ่งไม่มีผลกับอีกอัน
//class จะเป็นแบบ Pass by ฑำดำพำืแำ คือ เหมือนก็อปปี้แยกกันคนละอัน แต่แก้กับอันใดอันหนึ่งจะมีผลกับอีกอัน

struct CalculateBrain {
    var bmi: Float = 0.0  // 1 Value เก็บตัวเดียว
    var bmiStruct : BMI? // 3 Value เก็บสามตัว เป็นชุด (value,advice,color)
    //เครื่องหมายคำถามคือ เป็นตัวแปร Optional คือ ตัวเลือกจะมีหรือไม่มีค่าก็เป็นได้
    //ดังนั้นอาจจะไม่มีค่าก็ได้
    
    func getBMIValue() -> String{
//        let bmiTo1DecimalPlace = String(format: "%.1f",bmi)
        let bmiTo1DecimalPlace = String(format: "%.1f",bmiStruct?.value ?? 0.0)
        
        return bmiTo1DecimalPlace
    }
    func getAdvice() -> String{
        return bmiStruct?.advice ?? "No Advice"
        //if แบบย่อ
        //ตัวแปรที่ต้องการดูว่ามีค่าหรือไม่ ?? ถ้าไม่มีค่าให้ใช้ค่าตรงนี้แทน
    }
    func getcolor() -> UIColor{
     return bmiStruct?.color ?? #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
    }
    
    mutating func calculateBMI(height:Float, weight:Float){
        //bmi ตัวที่ใช้นี้ไม่มี var หรือ let นำหน้า คือตัวที่เป็น Global var
        //ส่วน weight กับ height คือ ตัวที่ฟังก์ชั่นรับค่ามาในชื่อนั้น เป็น Local var
        bmi = weight / (height*height)
        
        let bmiValueLocal = weight / (height * height)
        if bmiValueLocal < 8.5{
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies!", color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        }else if bmiValueLocal < 24.9{
            bmiStruct = BMI(value: bmiValueLocal,advice: "Fit as a pies!",color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            bmiStruct = BMI(value: bmiValueLocal,advice: "Eat less pies!",color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
    }
}
