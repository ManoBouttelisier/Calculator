//
//  CalculatorView.swift
//  CalculatorApp
//
//  Created by Mano Bouttelisier on 15/10/2024.
//

import SwiftUI

struct CalculatorView: View {
    @State var name = ""
    
    var body: some View {

            VStack {
                HStack {
                    TextEditor(text: $name)
                        .padding()
                    Grid{
                        GridRow {
                            ForEach(7..<10) { number in
                                Button("\(number)"){
                                    
                                }
                            }
                            Button("/"){
                                
                            }
                        }
                        GridRow {
                            ForEach(4..<7) { number in
                                Button("\(number)"){
                                    
                                }
                            }
                            Button("*"){
                                
                            }
                        }
                        GridRow {
                            ForEach(1..<4) { number in
                                Button("\(number)"){
                                    
                                }
                            }
                            Button("-"){
                                
                            }
                        }
                        GridRow {
                            Button("0"){
                                    
                            }
                            Button("C"){
                                
                            }
                            Button("E"){
                                
                            }
                            Button("+"){
                                
                            }
                        }
                        
                    }
                    .padding()
                }
                
                Button("Show Stack"){
                    
                }
                .padding()
            }
        }
        
    }
   

#Preview {
    CalculatorView()
}
