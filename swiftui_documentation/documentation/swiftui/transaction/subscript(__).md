---
title: subscript(_:)
description: Accesses the transaction value associated with a custom key.
source: https://developer.apple.com/documentation/swiftui/transaction/subscript(_:)
timestamp: 2025-10-29T00:10:06.692Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [transaction](/documentation/swiftui/transaction)

**Instance Subscript**

# subscript(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Accesses the transaction value associated with a custom key.

```swift
subscript<K>(key: K.Type) -> K.Value where K : TransactionKey { get set }
```

## Overview

Create custom transaction values by defining a key that conforms to the [Transaction Key](/documentation/swiftui/transactionkey) protocol, and then using that key with the subscript operator of the [Transaction](/documentation/swiftui/transaction) structure to get and set a value for that key:

```swift
private struct MyTransactionKey: TransactionKey {
    static let defaultValue = false
}

extension Transaction {
    var myCustomValue: Bool {
        get { self[MyTransactionKey.self] }
        set { self[MyTransactionKey.self] = newValue }
    }
}
```

## Getting information about a transaction

- [isContinuous](/documentation/swiftui/transaction/iscontinuous)
- [scrollTargetAnchor](/documentation/swiftui/transaction/scrolltargetanchor)
- [tracksVelocity](/documentation/swiftui/transaction/tracksvelocity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
