//
//  Result.swift
//  FindTheRoots
//
//  Created by Morgan Harris-Stoertz on 2023-01-28.
//

import Foundation

struct Result: Identifiable{
    let id = UUID()
    let a: Double
    let b: Double
    let c: Double
    let roots: String
}

let resultForPreviews = Result(a: 1,
                               b: -6,
                               c: 8,
                               roots: "x ≈ 2.00 and x ≈ 4.00")


