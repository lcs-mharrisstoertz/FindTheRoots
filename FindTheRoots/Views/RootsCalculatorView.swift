//
//  RootsCalculatorView.swift
//  FindTheRoots
//
//  Created by Morgan Harris-Stoertz on 2023-01-24.
//

import SwiftUI

struct RootsCalculatorView: View {
    
    //MARK: stored properties
    @State var a: Double = 0
    @State var b: Double = 0
    @State var c: Double = 0
    
    // MARK: computed properties
    var result: String {
        let discriminant = b * b - 4 * a * c
        if discriminant < 0 {
            return "no real roots"
        } else{
            
            let x1 = (b * -1 - discriminant.squareRoot() ) / (2*a)
            let x2 = (b * -1 + discriminant.squareRoot() ) / (2*a)
            
            return "x ≈ \(x1.formatted(.number.precision(.fractionLength(2)))) and x ≈ \(x2.formatted(.number.precision(.fractionLength(2))))"
        }
    }
    
    
    var body: some View {
        VStack (spacing: 0){
            Image("Formula 2")
                .resizable()
                .scaledToFit()
              
            
            Image("Formula 1")
                .resizable()
                .scaledToFit()
                .padding()
                .padding()
            
            
            //a
            
            HStack{
                VStack{
                    
                    Text("a: \(a.formatted(.number.precision(.fractionLength(1))))")
                    
                    Slider(value: $a, in: -20...20)
                }
                
            //b
                
                VStack{
                    
                    Text("b: \(b.formatted(.number.precision(.fractionLength(1))))")
                    
                    Slider(value: $b, in: -20...20)
                }
                
                
            //c
                VStack{
                    
                    Text("c: \(c.formatted(.number.precision(.fractionLength(1))))")
                    
                    Slider(value: $c, in: -20...20)
                    
                }
               
            }
            
           
            
            //display result
            
            Text("\(result)")
            
            
            Spacer()
           
            
            
            
        }
        
        .font(Font.custom("Times New Roman",
                                 size: 30.0,
                                 relativeTo: .body))
        
        .navigationTitle("Find The Roots")
    }
}



struct RootsCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            RootsCalculatorView()
        }
                
   
    }
}

