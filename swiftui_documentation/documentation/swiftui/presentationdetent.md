---
title: PresentationDetent
description: A type that represents a height where a sheet naturally rests.
source: https://developer.apple.com/documentation/swiftui/presentationdetent
timestamp: 2025-10-29T00:14:57.948Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PresentationDetent

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A type that represents a height where a sheet naturally rests.

```swift
struct PresentationDetent
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting built-in detents

- [large](/documentation/swiftui/presentationdetent/large) The system detent for a sheet at full height.
- [medium](/documentation/swiftui/presentationdetent/medium) The system detent for a sheet that’s approximately half the height of the screen, and is inactive in compact height.

## Creating custom detents

- [custom(_:)](/documentation/swiftui/presentationdetent/custom(_:)) A custom detent with a calculated height.
- [fraction(_:)](/documentation/swiftui/presentationdetent/fraction(_:)) A custom detent with the specified fractional height.
- [height(_:)](/documentation/swiftui/presentationdetent/height(_:)) A custom detent with the specified height.
- [PresentationDetent.Context](/documentation/swiftui/presentationdetent/context) Information that you use to calculate the presentation’s height.

## Configuring a sheet’s height

- [presentationDetents(_:)](/documentation/swiftui/view/presentationdetents(_:))
- [presentationDetents(_:selection:)](/documentation/swiftui/view/presentationdetents(_:selection:))
- [presentationContentInteraction(_:)](/documentation/swiftui/view/presentationcontentinteraction(_:))
- [presentationDragIndicator(_:)](/documentation/swiftui/view/presentationdragindicator(_:))
- [CustomPresentationDetent](/documentation/swiftui/custompresentationdetent)
- [PresentationContentInteraction](/documentation/swiftui/presentationcontentinteraction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
