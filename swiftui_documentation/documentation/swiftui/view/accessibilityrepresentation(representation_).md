---
title: accessibilityRepresentation(representation:)
description: Replaces one or more accessibility elements for this view with new accessibility elements.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityrepresentation(representation:)
timestamp: 2025-10-29T00:12:08.326Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityRepresentation(representation:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Replaces one or more accessibility elements for this view with new accessibility elements.

```swift
nonisolated func accessibilityRepresentation<V>(@ViewBuilder representation: () -> V) -> some View where V : View
```

## Parameters

**representation**

A hidden view that the accessibility system uses to generate accessibility elements.



## Discussion

You can make controls accessible by using a custom style. For example, a custom [Toggle Style](/documentation/swiftui/togglestyle) that you create inherits the accessibility features of [Toggle](/documentation/swiftui/toggle) automatically. When you can’t use the parent view’s accessibility elements, use the `accessibilityRepresentation(representation:)` modifier instead. This modifier replaces default accessibility elements with different accessibility elements that you provide. You use synthetic, non-visual accessibility elements to represent what the view displays.

The example below makes a custom adjustable control accessible by explicitly defining the representation of its step increments using a [Slider](/documentation/swiftui/slider):

```swift
var body: some View {
    VStack {
        SliderTrack(...) // Custom slider implementation.
    }
    .accessibilityRepresentation {
        Slider(value: $value, in: 0...100) {
            Text("Label")
        }
    }
}
```

SwiftUI hides the view that you provide in the `representation` closure and makes it non-interactive. The framework uses it only to generate accessibility elements.

## Creating accessible elements

- [accessibilityElement(children:)](/documentation/swiftui/view/accessibilityelement(children:))
- [accessibilityChildren(children:)](/documentation/swiftui/view/accessibilitychildren(children:))
- [AccessibilityChildBehavior](/documentation/swiftui/accessibilitychildbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
