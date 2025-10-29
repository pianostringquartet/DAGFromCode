---
title: init(reset:)
description: Creates a view state that’s derived from a gesture with a closure that provides a transaction to reset it.
source: https://developer.apple.com/documentation/swiftui/gesturestate/init(reset:)
timestamp: 2025-10-29T00:12:58.480Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [gesturestate](/documentation/swiftui/gesturestate)

**Initializer**

# init(reset:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a view state that’s derived from a gesture with a closure that provides a transaction to reset it.

```swift
init(reset: @escaping (Value, inout Transaction) -> Void)
```

## Parameters

**reset**

A closure that provides a [Transaction](/documentation/swiftui/transaction).



## Creating a gesture state

- [init(initialValue:)](/documentation/swiftui/gesturestate/init(initialvalue:))
- [init(initialValue:reset:)](/documentation/swiftui/gesturestate/init(initialvalue:reset:))
- [init(initialValue:resetTransaction:)](/documentation/swiftui/gesturestate/init(initialvalue:resettransaction:))
- [init(resetTransaction:)](/documentation/swiftui/gesturestate/init(resettransaction:))
- [init(wrappedValue:)](/documentation/swiftui/gesturestate/init(wrappedvalue:))
- [init(wrappedValue:reset:)](/documentation/swiftui/gesturestate/init(wrappedvalue:reset:))
- [init(wrappedValue:resetTransaction:)](/documentation/swiftui/gesturestate/init(wrappedvalue:resettransaction:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
