---
title: scrollInputBehavior(_:for:)
description: Enables or disables scrolling in scrollable views when using particular inputs.
source: https://developer.apple.com/documentation/swiftui/view/scrollinputbehavior(_:for:)
timestamp: 2025-10-29T00:15:18.512Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# scrollInputBehavior(_:for:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Enables or disables scrolling in scrollable views when using particular inputs.

```swift
@MainActor @preconcurrency func scrollInputBehavior(_ behavior: ScrollInputBehavior, for input: ScrollInputKind) -> some View
```

## Parameters

**behavior**

Whether scrolling should be enabled or disabled for this input.



**input**

The input for which to enable or disable scrolling.



## Discussion

In contrast to [scrollDisabled(_:)](/documentation/swiftui/view/scrolldisabled(_:)), this modifier will enable or disable scrolling only for particular inputs. The following, for instance, disables double-tap-to-scroll on watchOS while preserving the ability to scroll via touch and the Digital Crown:

```swift
ScrollView(...)
    .scrollInputBehavior(.disabled, for: .handGestureShortcut)
```

If `scrollDisabled(true)` has been applied to this view, scrolling will be disabled for all inputs and this modifier cannot be used to re-enable scrolling.

## Managing scrolling for different inputs

- [ScrollInputKind](/documentation/swiftui/scrollinputkind)
- [ScrollInputBehavior](/documentation/swiftui/scrollinputbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
