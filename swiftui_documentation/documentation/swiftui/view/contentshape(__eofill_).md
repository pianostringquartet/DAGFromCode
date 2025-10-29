---
title: contentShape(_:eoFill:)
description: Defines the content shape for hit testing.
source: https://developer.apple.com/documentation/swiftui/view/contentshape(_:eofill:)
timestamp: 2025-10-29T00:13:07.015Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# contentShape(_:eoFill:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Defines the content shape for hit testing.

```swift
nonisolated func contentShape<S>(_ shape: S, eoFill: Bool = false) -> some View where S : Shape
```

## Parameters

**shape**

The hit testing shape for the view.



**eoFill**

A Boolean that indicates whether the shape is interpreted with the even-odd winding number rule.



## Return Value

A view that uses the given shape for hit testing.

## Controlling hit testing

- [allowsTightening(_:)](/documentation/swiftui/view/allowstightening(_:))
- [contentShape(_:_:eoFill:)](/documentation/swiftui/view/contentshape(_:_:eofill:))
- [ContentShapeKinds](/documentation/swiftui/contentshapekinds)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
