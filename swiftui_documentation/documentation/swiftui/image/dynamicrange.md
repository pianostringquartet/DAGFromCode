---
title: Image.DynamicRange
source: https://developer.apple.com/documentation/swiftui/image/dynamicrange
timestamp: 2025-10-29T00:13:20.797Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Structure**

# Image.DynamicRange

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

```swift
struct DynamicRange
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting dynamic range values

- [standard](/documentation/swiftui/image/dynamicrange/standard) Restrict the image content dynamic range to the standard range.
- [high](/documentation/swiftui/image/dynamicrange/high) Allow image content to use an unrestricted extended range.
- [constrainedHigh](/documentation/swiftui/image/dynamicrange/constrainedhigh) Allow image content to use some extended range. This is appropriate for placing HDR content next to SDR content.

## Specifying dynamic range

- [allowedDynamicRange(_:)](/documentation/swiftui/image/alloweddynamicrange(_:))
- [allowedDynamicRange](/documentation/swiftui/environmentvalues/alloweddynamicrange)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
