---
title: PresentationContentInteraction
description: A behavior that you can use to influence how a presentation responds to swipe gestures.
source: https://developer.apple.com/documentation/swiftui/presentationcontentinteraction
timestamp: 2025-10-29T00:11:38.558Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PresentationContentInteraction

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> A behavior that you can use to influence how a presentation responds to swipe gestures.

```swift
struct PresentationContentInteraction
```

## Overview

Use values of this type with the [presentationContentInteraction(_:)](/documentation/swiftui/view/presentationcontentinteraction(_:)) modifier.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting interaction behaviors

- [automatic](/documentation/swiftui/presentationcontentinteraction/automatic) The default swipe behavior for the presentation.
- [resizes](/documentation/swiftui/presentationcontentinteraction/resizes) A behavior that prioritizes resizing a presentation when swiping, rather than scrolling the content of the presentation.
- [scrolls](/documentation/swiftui/presentationcontentinteraction/scrolls) A behavior that prioritizes scrolling the content of a presentation when swiping, rather than resizing the presentation.

## Configuring a sheet’s height

- [presentationDetents(_:)](/documentation/swiftui/view/presentationdetents(_:))
- [presentationDetents(_:selection:)](/documentation/swiftui/view/presentationdetents(_:selection:))
- [presentationContentInteraction(_:)](/documentation/swiftui/view/presentationcontentinteraction(_:))
- [presentationDragIndicator(_:)](/documentation/swiftui/view/presentationdragindicator(_:))
- [PresentationDetent](/documentation/swiftui/presentationdetent)
- [CustomPresentationDetent](/documentation/swiftui/custompresentationdetent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
