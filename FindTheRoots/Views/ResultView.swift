//
//  ResultView.swift
//  FindTheRoots
//
//  Created by Morgan Harris-Stoertz on 2023-01-28.
//

import SwiftUI

struct ResultView: View {
    
    //MARK: stored properties
    let somePriorResult: Result
    
    //MARK: computed properties
    var body: some View {
        VStack (spacing: 10){
            //input values
            HStack (spacing: 30) {
                
                Text("a: \(somePriorResult.a.formatted(.number.precision(.fractionLength(1))))   b: \(somePriorResult.a.formatted(.number.precision(.fractionLength(1))))   c: \(somePriorResult.c.formatted(.number.precision(.fractionLength(1))))")
                    .font(Font.custom("Times New Roman",
                                      size: 20.0,
                                      relativeTo: .body))
                
            }
            
            //output
            Text(somePriorResult.roots)
                .font(Font.custom("Times New Roman",
                                  size: 20.0,
                                  relativeTo: .body))
            
            
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 15)
        
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(somePriorResult: resultForPreviews)
    }
}

