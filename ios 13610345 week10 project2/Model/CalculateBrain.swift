import Foundation

// struct จะเป็นแบบ Pass by value คือ เหมือน Copy แยกกัน คนละอัน แก้กับอันใดอันหนึ่งไม่มีผลกับอีกอัน
// class จะเป็นแบบ Pass by Reference คือ เหมือน Copy แยกกัน คนละอัน แก้กับอันใดอันหนึ่งจะมีผลกับอีกอัน

struct CalculateBrain {
    var bmi: Float = 0.0
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
        
    }
    mutating func calculateBMI(height:Float, weight:Float){
        // bmi ตัวที่ใช้ ไม่มี var หรือ let นำหน้า คือตัวที่เป็น Global var
        // ส่วน weight กับ height คือ ตัวที่ฟังก์ชันรับค่ามาในชื่อนั้น เป็น Local var
        bmi = weight / (height*height)
    }
}
