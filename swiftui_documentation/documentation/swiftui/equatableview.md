---
title: EquatableView
description: A view type that compares itself against its previous value and prevents its child updating if its new value is the same as its old value.
source: https://developer.apple.com/documentation/swiftui/equatableview
timestamp: 2025-10-29T00:11:24.346Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# EquatableView

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A view type that compares itself against its previous value and prevents its child updating if its new value is the same as its old value.

```swift
@frozen struct EquatableView<Content> where Content : Equatable, Content : View
```

## Conforms To

- [View](/documentation/swiftui/view)

## Creating an equatable view

- [init(content:)](/documentation/swiftui/equatableview/init(content:))
- [content](/documentation/swiftui/equatableview/content)

## Supporting view types

- [AnyView](/documentation/swiftui/anyview)
- [EmptyView](/documentation/swiftui/emptyview)
- [SubscriptionView](/documentation/swiftui/subscriptionview)
- [TupleView](/documentation/swiftui/tupleview)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
