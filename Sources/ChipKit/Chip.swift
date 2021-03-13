//
//  Chip.swift
//  ChipKit
//
//  Created by Cameron Eubank on 3/11/21.
//

import Foundation

/// Represents a single `Chip`.
public struct Chip {
    /// The calculated value of a `Chip`.
    ///
    /// In most cases, the provided `currencyCode`, if any, is used to determine value.
    /// When
    ///
    public let value: Int
    
    /// The representing `Chip.Color` category of a `Chip`.
    ///
    /// Has no implications on the displayed color of a `Chip`.
    ///
    public let color: Color
    
    // MARK: - Initializers
    
    /// Initialize an instance of `Chip` with a custom value and representing color.
    ///
    /// - parameter color: The `Chip.Color` category of the `Chip`.
    /// - parameter value: The `Int` value of the `Chip`.
    ///
    public init(color: Chip.Color,
                value: Int) {
        self.color = color
        self.value = value
    }
    
    /// Initialize an instance of `Chip` with a color and a currency code.
    ///
    /// - parameter color: The `Chip.Color` category of the `Chip`.
    /// - parameter currencyCode: The `String` currency code with which to determine the value of the `Chip`.
    ///
    public init(color: Chip.Color,
                currencyCode: ChipCurrency = .usd) {
        self.value = color.value(currencyCode: currencyCode)
        self.color = color
    }
}

// MARK: - Chip.Color

extension Chip {
    public enum Color: Int {
        case white = 1
        case yellow = 2
        case red = 5
        case blue = 10
        case grey = 20
        case green = 25
        case orange = 50
        case black = 100
        case pink = 250
        case purple = 500
        case burgundy = 1000
        case lightBlue = 2000
        case brown = 5000
        
        func value(currencyCode: ChipCurrency) -> Int {
            let double = Double(rawValue) * currencyCode.amountInOneUSD
            return Int(double)
        }
    }
}

// MARK: - Sequence+Chip

extension Sequence where Element == Chip {
    /// The combined value of all `Chip` instances in the sequence.
    public var summedChipValues: Int { map { $0.value }.reduce(0, +) }
}
