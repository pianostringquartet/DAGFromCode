---
title: EnvironmentalModifier
description: A modifier that must resolve to a concrete modifier in an environment before use.
source: https://developer.apple.com/documentation/swiftui/environmentalmodifier
timestamp: 2025-10-29T00:10:34.713Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# EnvironmentalModifier

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A modifier that must resolve to a concrete modifier in an environment before use.

```swift
protocol EnvironmentalModifier : ViewModifier where Self.Body == Never
```

## Inherits From

- [ViewModifier](/documentation/swiftui/viewmodifier)

## Resolving a modifier

- [resolve(in:)](/documentation/swiftui/environmentalmodifier/resolve(in:)) Resolve to a concrete modifier in the given .
- [ResolvedModifier](/documentation/swiftui/environmentalmodifier/resolvedmodifier) The type of modifier to use after being resolved.

## Modifying a view

- [Configuring views](/documentation/swiftui/configuring-views)
- [Reducing view modifier maintenance](/documentation/swiftui/reducing-view-modifier-maintenance)
- [modifier(_:)](/documentation/swiftui/view/modifier(_:))
- [ViewModifier](/documentation/swiftui/viewmodifier)
- [EmptyModifier](/documentation/swiftui/emptymodifier)
- [ModifiedContent](/documentation/swiftui/modifiedcontent)
- [ManipulableModifier](/documentation/swiftui/manipulablemodifier)
- [ManipulableResponderModifier](/documentation/swiftui/manipulablerespondermodifier)
- [ManipulableTransformBindingModifier](/documentation/swiftui/manipulabletransformbindingmodifier)
- [ManipulationGeometryModifier](/documentation/swiftui/manipulationgeometrymodifier)
- [ManipulationGestureModifier](/documentation/swiftui/manipulationgesturemodifier)
- [ManipulationUsingGestureStateModifier](/documentation/swiftui/manipulationusinggesturestatemodifier)
- [Manipulable](/documentation/swiftui/manipulable)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
