---
title: PresentationAdaptation
description: Strategies for adapting a presentation to a different size class.
source: https://developer.apple.com/documentation/swiftui/presentationadaptation
timestamp: 2025-10-29T00:10:58.113Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PresentationAdaptation

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> Strategies for adapting a presentation to a different size class.

```swift
struct PresentationAdaptation
```

## Overview

Use values of this type with the [presentationCompactAdaptation(_:)](/documentation/swiftui/view/presentationcompactadaptation(_:)) and [presentationCompactAdaptation(horizontal:vertical:)](/documentation/swiftui/view/presentationcompactadaptation(horizontal:vertical:)) modifiers.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting adaptation strategies

- [automatic](/documentation/swiftui/presentationadaptation/automatic) Use the default presentation adaptation.
- [none](/documentation/swiftui/presentationadaptation/none) Don’t adapt for the size class, if possible.
- [fullScreenCover](/documentation/swiftui/presentationadaptation/fullscreencover) Prefer a full-screen-cover appearance when adapting for size classes.
- [popover](/documentation/swiftui/presentationadaptation/popover) Prefer a popover appearance when adapting for size classes.
- [sheet](/documentation/swiftui/presentationadaptation/sheet) Prefer a sheet appearance when adapting for size classes.

## Adapting a presentation size

- [presentationCompactAdaptation(horizontal:vertical:)](/documentation/swiftui/view/presentationcompactadaptation(horizontal:vertical:))
- [presentationCompactAdaptation(_:)](/documentation/swiftui/view/presentationcompactadaptation(_:))
- [presentationSizing(_:)](/documentation/swiftui/view/presentationsizing(_:))
- [PresentationSizing](/documentation/swiftui/presentationsizing)
- [PresentationSizingRoot](/documentation/swiftui/presentationsizingroot)
- [PresentationSizingContext](/documentation/swiftui/presentationsizingcontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
