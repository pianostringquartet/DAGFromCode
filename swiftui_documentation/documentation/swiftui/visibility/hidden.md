---
title: Visibility.hidden
description: The element may be hidden.
source: https://developer.apple.com/documentation/swiftui/visibility/hidden
timestamp: 2025-10-29T00:10:04.736Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [visibility](/documentation/swiftui/visibility)

**Case**

# Visibility.hidden

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The element may be hidden.

```swift
case hidden
```

## Discussion

Some APIs may use this value to represent a hint or preference, rather than a mandatory assertion. For example, setting confirmation dialog title visibility to `hidden` using the [confirmationDialog(_:isPresented:titleVisibility:actions:)](/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:actions:)) modifier may not always hide the dialog title, which is required on some platforms.

## Getting visibility options

- [Visibility.automatic](/documentation/swiftui/visibility/automatic)
- [Visibility.visible](/documentation/swiftui/visibility/visible)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
