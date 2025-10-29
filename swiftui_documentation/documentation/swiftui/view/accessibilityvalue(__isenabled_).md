---
title: accessibilityValue(_:isEnabled:)
description: Adds a textual description of the value that the view contains.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityvalue(_:isenabled:)
timestamp: 2025-10-29T00:14:18.301Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityValue(_:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Adds a textual description of the value that the view contains.

```swift
nonisolated func accessibilityValue(_ valueDescription: Text, isEnabled: Bool) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
```

## Parameters

**valueDescription**

The accessibility value to apply.



**isEnabled**

If true the accessibility value is applied; otherwise the accessibility value is unchanged.



## Discussion

Use this method to describe the value represented by a view, but only if that’s different than the view’s label. For example, for a slider that you label as “Volume” using accessibilityLabel(), you can provide the current volume setting, like “60%”, using accessibilityValue().

## Describing values

- [accessibilityValue(_:)](/documentation/swiftui/view/accessibilityvalue(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
