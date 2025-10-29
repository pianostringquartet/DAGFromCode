---
title: Entry()
description: Creates an environment values, transaction, container values, or focused values entry.
source: https://developer.apple.com/documentation/swiftui/entry()
timestamp: 2025-10-29T00:09:54.048Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Macro**

# Entry()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates an environment values, transaction, container values, or focused values entry.

```swift
@attached(accessor) @attached(peer, names: prefixed(__Key_)) macro Entry()
```

## Environment Values

Create [Environment Values](/documentation/swiftui/environmentvalues) entries by extending the [Environment Values](/documentation/swiftui/environmentvalues) structure with new properties and attaching the @Entry macro to the variable declarations:

```swift
extension EnvironmentValues {
    @Entry var myCustomValue: String = "Default value"
    @Entry var anotherCustomValue = true
}
```

## Transaction Values

Create [Transaction](/documentation/swiftui/transaction) entries by extending the [Transaction](/documentation/swiftui/transaction) structure with new properties and attaching the @Entry macro to the variable declarations:

```swift
extension Transaction {
    @Entry var myCustomValue: String = "Default value"
}
```

## Container Values

Create [Container Values](/documentation/swiftui/containervalues) entries by extending the [Container Values](/documentation/swiftui/containervalues) structure with new properties and attaching the @Entry macro to the variable declarations:

```swift
extension ContainerValues {
    @Entry var myCustomValue: String = "Default value"
}
```

## Focused Values

Since the default value for [Focused Values](/documentation/swiftui/focusedvalues) is always `nil`, [Focused Values](/documentation/swiftui/focusedvalues) entries cannot specify a different default value and must have an Optional type.

Create [Focused Values](/documentation/swiftui/focusedvalues) entries by extending the [Focused Values](/documentation/swiftui/focusedvalues) structure with new properties and attaching the @Entry macro to the variable declarations:

```swift
extension FocusedValues {
    @Entry var myCustomValue: String?
}
```

## Moving an animation to another view

- [withTransaction(_:_:)](/documentation/swiftui/withtransaction(_:_:))
- [withTransaction(_:_:_:)](/documentation/swiftui/withtransaction(_:_:_:))
- [transaction(_:)](/documentation/swiftui/view/transaction(_:))
- [transaction(value:_:)](/documentation/swiftui/view/transaction(value:_:))
- [transaction(_:body:)](/documentation/swiftui/view/transaction(_:body:))
- [Transaction](/documentation/swiftui/transaction)
- [TransactionKey](/documentation/swiftui/transactionkey)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
