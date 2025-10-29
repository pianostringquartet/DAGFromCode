---
title: AnyView
description: A type-erased view.
source: https://developer.apple.com/documentation/swiftui/anyview
timestamp: 2025-10-29T00:13:26.565Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AnyView

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A type-erased view.

```swift
@frozen struct AnyView
```

## Overview

An `AnyView` allows changing the type of view used in a given view hierarchy. Whenever the type of view used with an `AnyView` changes, the old hierarchy is destroyed and a new hierarchy is created for the new type.

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a view

- [init(_:)](/documentation/swiftui/anyview/init(_:)) Create an instance that type-erases .
- [init(erasing:)](/documentation/swiftui/anyview/init(erasing:))

## Supporting view types

- [EmptyView](/documentation/swiftui/emptyview)
- [EquatableView](/documentation/swiftui/equatableview)
- [SubscriptionView](/documentation/swiftui/subscriptionview)
- [TupleView](/documentation/swiftui/tupleview)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
