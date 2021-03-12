//
//  ChipCurrency.swift
//  ChipKit
//
//  Created by Cameron Eubank on 3/11/21.
//

import Foundation

public enum ChipCurrency: String {
    /// United States Dollar
    case usd = "USD"
    /// Mexican Peso
    case mxn = "MXN"
    /// Japanese Yen
    case jpy = "JPY"
    
    /// The number of units of the currency that equals one USD.
    internal var amountInOneUSD: Double {
        switch self {
        case .usd: return 1
        case .mxn: return 20.68
        case .jpy: return 108.05
        }
    }
}
