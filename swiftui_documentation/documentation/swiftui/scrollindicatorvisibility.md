---
title: ScrollIndicatorVisibility
description: The visibility of scroll indicators of a UI element.
source: https://developer.apple.com/documentation/swiftui/scrollindicatorvisibility
timestamp: 2025-10-29T00:13:02.375Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ScrollIndicatorVisibility

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The visibility of scroll indicators of a UI element.

```swift
struct ScrollIndicatorVisibility
```

## Overview

Pass a value of this type to the [scrollIndicators(_:axes:)](/documentation/swiftui/view/scrollindicators(_:axes:)) method to specify the preferred scroll indicator visibility of a view hierarchy.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)

## Getting visibilties

- [automatic](/documentation/swiftui/scrollindicatorvisibility/automatic) Scroll indicator visibility depends on the policies of the component accepting the visibility configuration.
- [hidden](/documentation/swiftui/scrollindicatorvisibility/hidden) Hide the scroll indicators.
- [never](/documentation/swiftui/scrollindicatorvisibility/never) Scroll indicators should never be visible.
- [visible](/documentation/swiftui/scrollindicatorvisibility/visible) Show the scroll indicators.

## Showing scroll indicators

- [scrollIndicatorsFlash(onAppear:)](/documentation/swiftui/view/scrollindicatorsflash(onappear:))
- [scrollIndicatorsFlash(trigger:)](/documentation/swiftui/view/scrollindicatorsflash(trigger:))
- [scrollIndicators(_:axes:)](/documentation/swiftui/view/scrollindicators(_:axes:))
- [horizontalScrollIndicatorVisibility](/documentation/swiftui/environmentvalues/horizontalscrollindicatorvisibility)
- [verticalScrollIndicatorVisibility](/documentation/swiftui/environmentvalues/verticalscrollindicatorvisibility)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
