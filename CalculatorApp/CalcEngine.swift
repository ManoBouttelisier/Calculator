import Foundation
@Observable

class CalcEngine {
    var stack: [Double] = []
    var result = ""
    var temp: [String] = []
    
    func push(_ value: Double) {
        stack.append(value)
        result.append("\(value)\n")
    }
    
    func addNumberText(getal: String){
        result += "\(getal)"
    }
    
    func addNumber(){
        stack.append(Double(result)!)
        
        
    }
    
    func clearEngine() {
        stack.removeAll()
        result.removeAll()
    }
    
    func optellen() {
        result.append("+\n")
        if (stack.count >= 2){
            let calc = stack[0] + stack[1]
            result.append(String("\(calc) \n"))
            stack.insert(Double(calc), at: 0)
        } else {
            print("error");
        }
    }
    
    func aftrekken(_ value: Double) {
        result.append("-\n")
        if (stack.count >= 2){
            let calc = stack[0] - stack[1]
            result.append(String("\(calc) \n"))
            stack.insert(Double(calc), at: 0)
        } else {
            print("error");
        }
    }
    func vermenigvuldigen(_ value: Double) {
        result.append("*\n")
        if (stack.count >= 2){
            let calc = stack[0] * stack[1]
            result.append(String("\(calc) \n"))
            stack.insert(Double(calc), at: 0)
        } else {
            print("error");
        }
    }
    func delen(_ value: Double) {
        result.append("/\n")
        if (stack.count >= 2){
            let calc = stack[0] / stack[1]
            result.append(String("\(calc) \n"))
            stack.insert(Double(calc), at: 0)
        } else {
            print("error");
        }
    }
    
    func clear() {
        stack.removeAll()
        result = ""
    }
}
