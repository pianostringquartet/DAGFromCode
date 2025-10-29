---
title: translation
description: The total translation from the start of the drag gesture to the current event of the drag gesture.
source: https://developer.apple.com/documentation/swiftui/draggesture/value/translation
timestamp: 2025-10-29T00:11:51.433Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [draggesture](/documentation/swiftui/draggesture) › [value](/documentation/swiftui/draggesture/value)

**Instance Property**

# translation

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+, watchOS 6.0+

> The total translation from the start of the drag gesture to the current event of the drag gesture.

```swift
var translation: CGSize { get }
```

## Discussion

This is equivalent to `location.{x,y} - startLocation.{x,y}`.

## Getting 2D position

- [startLocation](/documentation/swiftui/draggesture/value/startlocation)
- [location](/documentation/swiftui/draggesture/value/location)
- [predictedEndLocation](/documentation/swiftui/draggesture/value/predictedendlocation)
- [predictedEndTranslation](/documentation/swiftui/draggesture/value/predictedendtranslation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
