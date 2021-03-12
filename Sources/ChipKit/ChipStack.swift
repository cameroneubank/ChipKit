//
//  ChipStack.swift
//  ChipKit
//
//  Created by Cameron Eubank on 3/11/21.
//

import Foundation

/// Represents a stack of `Chip`s.
public class ChipStack {
    
    /// All instances of `Chip` in a `ChipStack`.
    public let chips: [Chip]
    
    /// The current value of all chips in a `ChipStack` represented as `Int`.
    public var value: Int {
        chips.map { $0.value }.reduce(0, +)
    }
    
    /// Initialize an instance of `ChipStack` for a given bankroll amount.
    /// A currency code is taken into account to valuate chips.
    /// The distribution of chips depends on the amount of `bankroll` and the provided `currencyCode` to
    /// give a value to each `Chip`, the types of chips created varies.
    ///
    /// - parameter bankroll: The amount in a given currency the chips in a `ChipStack` will represent.
    /// - parameter currencyCode: The `String` currency code with which to determine the value of each `Chip` in a `ChipStack`.
    /// - parameter allocationStrategy: The `ChipStack.AllocationStrategy` to determine the allocation of chip values in a `ChipStack`.
    ///
    public init(bankroll: Int,
                currencyCode: ChipCurrency,
                allocationStrategy: ChipStack.AllocationStrategy) {
        self.chips = ChipStack.allocateChips(bankroll: bankroll,
                                             currencyCode: currencyCode,
                                             allocationStrategy: allocationStrategy)
    }
    
    // MARK: - Private
    
    private static func allocateChips(bankroll: Int,
                                      currencyCode: ChipCurrency,
                                      allocationStrategy: ChipStack.AllocationStrategy) -> [Chip] {
        switch allocationStrategy {
        case .small(let highestValue):
            return [Chip]()
        case .equal:
        // 25% of stack is chips worth > bankroll * 0%? && < 25%
        // 25% of stack is chips worth >= bankroll * 25% && < 50%?
        // 25% of stack is chips worth >= bankroll * 50% && < 75%
        // 25% of stack is chips worth >= bankroll * 75% < 100%
            return [Chip]()
        case .large(let lowestValue):
            return [Chip]()
        }
    }
}

// MARK: - ChipStack.AllocationStrategy

extension ChipStack {
    public enum AllocationStrategy {
        /// The allocation of chips is focused more on smaller valued chips.
        /// A highest desired chip value can be provided.
        /// No chips whose value is over this amount will be allocated.
        case small(highestValue: Int)
        
        /// The allocation of chips is focused equally on smaller and larger valued chips.
        case equal
        
        /// The allocation of chips is focused more on smaller valued chips.
        /// A highest desired chip value can be provided.
        /// No chips whose value is over this amount will be allocated.
        case large(lowestValue: Int)
    }
}
