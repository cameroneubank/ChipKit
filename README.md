# ChipKit
## Casino Chips, in Swift!

ChipKit is a simple to use Swift framework for creating and working with Casino Chips.

## Features
- Create chips with predefined values for a given currency code, or create chips with a custom value.

## Overview

### Chip
`Chip` is the primary entity of `ChipKit`, and represents a single casino chip.

#### Usage
In its simplest form for `USD` currency codes, a `Chip` can be instantiated via:
```
let chip: Chip = Chip(color: .white)
```

A `Chip` can be instantiated and valued in a currency code other than `USD` via:
```
let chipInPesos: Chip = Chip(color: .white, currencyCode: .mxn)
```

A `Chip` can also be valued agnostic to currency code, and can be instantiated via:
```
let customValueChip: Chip = Chip(color: .white, value: 3)
```

## Installation

CardKit is available via Swift Package Manager.
