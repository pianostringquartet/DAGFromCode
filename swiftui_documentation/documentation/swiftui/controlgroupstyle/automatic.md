---
title: automatic
description: The default control group style.
source: https://developer.apple.com/documentation/swiftui/controlgroupstyle/automatic
timestamp: 2025-10-29T00:15:27.659Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlgroupstyle](/documentation/swiftui/controlgroupstyle)

**Type Property**

# automatic

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 17.0+, visionOS 1.0+

> The default control group style.

```swift
@MainActor @preconcurrency static var automatic: AutomaticControlGroupStyle { get }
```

## Discussion

The default control group style can vary by platform. By default, both platforms use a momentary segmented control style that’s appropriate for the environment in which it is rendered.

You can override a control group’s style. To apply the default style to a control group or to a view that contains a control group, use the [controlGroupStyle(_:)](/documentation/swiftui/view/controlgroupstyle(_:)) modifier.

## Getting built-in control group styles

- [compactMenu](/documentation/swiftui/controlgroupstyle/compactmenu)
- [menu](/documentation/swiftui/controlgroupstyle/menu)
- [navigation](/documentation/swiftui/controlgroupstyle/navigation)
- [palette](/documentation/swiftui/controlgroupstyle/palette)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
