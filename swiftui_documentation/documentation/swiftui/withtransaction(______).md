---
title: withTransaction(_:_:_:)
description: Executes a closure with the specified transaction key path and value and returns the result.
source: https://developer.apple.com/documentation/swiftui/withtransaction(_:_:_:)
timestamp: 2025-10-29T00:12:58.631Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Function**

# withTransaction(_:_:_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Executes a closure with the specified transaction key path and value and returns the result.

```swift
func withTransaction<R, V>(_ keyPath: WritableKeyPath<Transaction, V>, _ value: V, _ body: () throws -> R) rethrows -> R
```

## Parameters

**keyPath**

A key path that indicates the property of the [Transaction](/documentation/swiftui/transaction) structure to update.



**value**

The new value to set for the item specified by `keyPath`.



**body**

A closure to execute.



## Return Value

The result of executing the closure with the specified transaction value.

## Moving an animation to another view

- [withTransaction(_:_:)](/documentation/swiftui/withtransaction(_:_:))
- [transaction(_:)](/documentation/swiftui/view/transaction(_:))
- [transaction(value:_:)](/documentation/swiftui/view/transaction(value:_:))
- [transaction(_:body:)](/documentation/swiftui/view/transaction(_:body:))
- [Transaction](/documentation/swiftui/transaction)
- [Entry()](/documentation/swiftui/entry())
- [TransactionKey](/documentation/swiftui/transactionkey)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
