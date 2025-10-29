---
title: TransactionKey
description: A key for accessing values in a transaction.
source: https://developer.apple.com/documentation/swiftui/transactionkey
timestamp: 2025-10-29T00:09:28.917Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# TransactionKey

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A key for accessing values in a transaction.

```swift
protocol TransactionKey
```

## Overview

You can create custom transaction values by extending the [Transaction](/documentation/swiftui/transaction) structure with new properties. First declare a new transaction key type and specify a value for the required [default Value](/documentation/swiftui/transactionkey/defaultvalue) property:

```swift
private struct MyTransactionKey: TransactionKey {
    static let defaultValue = false
}
```

The Swift compiler automatically infers the associated [Value](/documentation/swiftui/transactionkey/value) type as the type you specify for the default value. Then use the key to define a new transaction value property:

```swift
extension Transaction {
    var myCustomValue: Bool {
        get { self[MyTransactionKey.self] }
        set { self[MyTransactionKey.self] = newValue }
    }
}
```

Clients of your transaction value never use the key directly. Instead, they use the key path of your custom transaction value property. To set the transaction value for a change, wrap that change in a call to `withTransaction`:

```swift
withTransaction(\.myCustomValue, true) {
    isActive.toggle()
}
```

To use the value from inside `MyView` or one of its descendants, use the [transaction(_:)](/documentation/swiftui/view/transaction(_:)) view modifier:

```swift
MyView()
    .transaction { transaction in
        if transaction.myCustomValue {
            transaction.animation = .default.repeatCount(3)
        }
    }
```

## Setting a default value

- [defaultValue](/documentation/swiftui/transactionkey/defaultvalue) The default value for the transaction key.
- [Value](/documentation/swiftui/transactionkey/value) The associated type representing the type of the transaction key’s value.

## Moving an animation to another view

- [withTransaction(_:_:)](/documentation/swiftui/withtransaction(_:_:))
- [withTransaction(_:_:_:)](/documentation/swiftui/withtransaction(_:_:_:))
- [transaction(_:)](/documentation/swiftui/view/transaction(_:))
- [transaction(value:_:)](/documentation/swiftui/view/transaction(value:_:))
- [transaction(_:body:)](/documentation/swiftui/view/transaction(_:body:))
- [Transaction](/documentation/swiftui/transaction)
- [Entry()](/documentation/swiftui/entry())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
