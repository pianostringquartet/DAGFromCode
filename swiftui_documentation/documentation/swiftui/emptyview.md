---
title: EmptyView
description: A view that doesn’t contain any content.
source: https://developer.apple.com/documentation/swiftui/emptyview
timestamp: 2025-10-29T00:12:33.483Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# EmptyView

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A view that doesn’t contain any content.

```swift
@frozen struct EmptyView
```

## Overview

You will rarely, if ever, need to create an `EmptyView` directly. Instead, `EmptyView` represents the absence of a view.

SwiftUI uses `EmptyView` in situations where a SwiftUI view type defines one or more child views with generic parameters, and allows the child views to be absent. When absent, the child view’s type in the generic type parameter is `EmptyView`.

The following example creates an indeterminate [Progress View](/documentation/swiftui/progressview) without a label. The [Progress View](/documentation/swiftui/progressview) type declares two generic parameters, `Label` and `CurrentValueLabel`, for the types used by its subviews. When both subviews are absent, like they are here, the resulting type is `ProgressView<EmptyView, EmptyView>`, as indicated by the example’s output:

```swift
let progressView = ProgressView()
print("\(type(of:progressView))")
// Prints: ProgressView<EmptyView, EmptyView>
```

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [View](/documentation/swiftui/view)

## Creating an empty view

- [init()](/documentation/swiftui/emptyview/init()) Creates an empty view.

## Supporting view types

- [AnyView](/documentation/swiftui/anyview)
- [EquatableView](/documentation/swiftui/equatableview)
- [SubscriptionView](/documentation/swiftui/subscriptionview)
- [TupleView](/documentation/swiftui/tupleview)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
