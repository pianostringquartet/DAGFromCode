---
title: isScrollEnabled
description: A Boolean value that indicates whether any scroll views associated with this environment allow scrolling to occur.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/isscrollenabled
timestamp: 2025-10-29T00:12:26.173Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# isScrollEnabled

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A Boolean value that indicates whether any scroll views associated with this environment allow scrolling to occur.

```swift
var isScrollEnabled: Bool { get set }
```

## Discussion

The default value is `true`. Use the [scrollDisabled(_:)](/documentation/swiftui/view/scrolldisabled(_:)) modifier to configure this property.

## Disabling scrolling

- [scrollDisabled(_:)](/documentation/swiftui/view/scrolldisabled(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
