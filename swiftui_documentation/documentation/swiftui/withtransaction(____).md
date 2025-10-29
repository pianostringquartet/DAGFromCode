---
title: withTransaction(_:_:)
description: Executes a closure with the specified transaction and returns the result.
source: https://developer.apple.com/documentation/swiftui/withtransaction(_:_:)
timestamp: 2025-10-29T00:10:11.222Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Function**

# withTransaction(_:_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Executes a closure with the specified transaction and returns the result.

```swift
func withTransaction<Result>(_ transaction: Transaction, _ body: () throws -> Result) rethrows -> Result
```

## Parameters

**body**

A closure to execute.



## Return Value

The result of executing the closure with the specified transaction.

## Moving an animation to another view

- [withTransaction(_:_:_:)](/documentation/swiftui/withtransaction(_:_:_:))
- [transaction(_:)](/documentation/swiftui/view/transaction(_:))
- [transaction(value:_:)](/documentation/swiftui/view/transaction(value:_:))
- [transaction(_:body:)](/documentation/swiftui/view/transaction(_:body:))
- [Transaction](/documentation/swiftui/transaction)
- [Entry()](/documentation/swiftui/entry())
- [TransactionKey](/documentation/swiftui/transactionkey)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
