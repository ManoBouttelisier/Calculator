import SwiftUI

struct CalculatorView: View {
    @State private var engine = CalcEngine()
    @State private var currentNumber = ""
    
    var body: some View {
        VStack {
            HStack {
                TextEditor(text:.constant(engine.result))
                    .padding()
                    .frame(width:180 , height: 200)
                           Grid{
                               GridRow {
                                   ForEach(7..<10) { number in
                                       Button("\(number)"){
                                           engine.addNumberText(getal: "\(number)")
                                       }
                                   }
                                   Button("/"){
                                       
                                   }
                               }
                               GridRow {
                                   ForEach(4..<7) { number in
                                       Button("\(number)"){
                                           engine.addNumberText(getal: "\(number)")
                                       }
                                   }
                                   Button("*"){
                                       
                                   }
                               }
                               GridRow {
                                   ForEach(1..<4) { number in
                                       Button("\(number)"){
                                           engine.addNumberText(getal: "\(number)")
                                       }
                                   }
                                   Button("-"){
                                       
                                   }
                               }
                               GridRow {
                                   Button("0"){
                                       engine.addNumberText(getal: "0")
                                   }
                                   Button("C"){
                                       engine.clearEngine()
                                   }
                                   Button("E"){
                                       engine.addNumber()
                                   }
                                   Button("+"){
                                       
                                   }
                               }
                               
                           }
                            .padding()
                        }
            Button("Show Stack") {
                engine.result.append("\nStack: \(engine.stack)\n")
            }
            .padding()
        }
    }
}
#Preview {
    CalculatorView()
}
