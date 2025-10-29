---
title: allowedDynamicRange(_:)
description: Returns a new view configured with the specified allowed dynamic range.
source: https://developer.apple.com/documentation/swiftui/view/alloweddynamicrange(_:)
timestamp: 2025-10-29T00:11:53.976Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# allowedDynamicRange(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Returns a new view configured with the specified allowed dynamic range.

```swift
nonisolated func allowedDynamicRange(_ range: Image.DynamicRange?) -> some View
```

## Parameters

**range**

The requested dynamic range, or nil to restore the default allowed range.



## Return Value

A new view.

## Discussion

The following example enables HDR rendering within a view hierarchy:

```swift
MyView().allowedDynamicRange(.high)
```

## Colors and patterns

- [backgroundStyle(_:)](/documentation/swiftui/view/backgroundstyle(_:))
- [foregroundStyle(_:)](/documentation/swiftui/view/foregroundstyle(_:))
- [foregroundStyle(_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:))
- [foregroundStyle(_:_:_:)](/documentation/swiftui/view/foregroundstyle(_:_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
