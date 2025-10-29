---
title: subscript(_:)
description: The custom attribute of type  associated with the run of glyphs, or nil. If no run contains the custom attribute we also check its attachment’s runs.
source: https://developer.apple.com/documentation/swiftui/text/layout/run/subscript(_:)
timestamp: 2025-10-29T00:14:23.942Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text) › [layout](/documentation/swiftui/text/layout) › [run](/documentation/swiftui/text/layout/run)

**Instance Subscript**

# subscript(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The custom attribute of type  associated with the run of glyphs, or nil. If no run contains the custom attribute we also check its attachment’s runs.

```swift
subscript<T>(key: T.Type) -> T? where T : TextAttribute { get }
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
