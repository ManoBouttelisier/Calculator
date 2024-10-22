
import Foundation

@Observable

class CalcEngine {
    private var stack: [Double] = []
    var result = ""
    
    
    
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
    
    
    
}


