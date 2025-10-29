---
title: accessibilityChildren(children:)
description: Replaces the existing accessibility element’s children with one or more new synthetic accessibility elements.
source: https://developer.apple.com/documentation/swiftui/view/accessibilitychildren(children:)
timestamp: 2025-10-29T00:14:29.883Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityChildren(children:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Replaces the existing accessibility element’s children with one or more new synthetic accessibility elements.

```swift
nonisolated func accessibilityChildren<V>(@ViewBuilder children: () -> V) -> some View where V : View
```

## Parameters

**children**

A [View Builder](/documentation/swiftui/viewbuilder) that represents the replacement child views the framework uses to generate accessibility elements.



## Discussion

Use this modifier to replace an existing element’s children with one or more new synthetic accessibility elements you provide. This allows for synthetic, non-visual accessibility elements to be set as children of a visual accessibility element.

SwiftUI creates an accessibility container implicitly when needed. If an accessibility element already exists, the framework converts it into an accessibility container.

In the  example below, a [Canvas](/documentation/swiftui/canvas) displays a graph of vertical bars that don’t have any inherent accessibility elements. You make the view accessible by adding the [accessibilityChildren(children:)](/documentation/swiftui/view/accessibilitychildren(children:)) modifier with views whose accessibility elements represent the values of each bar drawn in the canvas:

```swift
var body: some View {
    Canvas { context, size in
        // Draw Graph
        for data in dataSet {
            let path = Path(
                roundedRect: CGRect(
                    x: (size.width / CGFloat(dataSet.count))
                    * CGFloat(data.week),
                    y: 0,
                    width: size.width / CGFloat(dataSet.count),
                    height: CGFloat(data.lines),
                cornerRadius: 5)
            context.fill(path, with: .color(.blue))
        }
        // Draw Axis and Labels
        ...
    }
    .accessibilityLabel("Lines of Code per Week")
    .accessibilityChildren {
        HStack {
            ForEach(dataSet) { data in
                RoundedRectangle(cornerRadius: 5)
                    .accessibilityLabel("Week \(data.week)")
                    .accessibilityValue("\(data.lines) lines")
            }
        }
    }
}
```

SwiftUI hides any views that you provide with the `children` parameter, then the framework uses the views to generate the accessibility elements.

## Creating accessible elements

- [accessibilityElement(children:)](/documentation/swiftui/view/accessibilityelement(children:))
- [accessibilityRepresentation(representation:)](/documentation/swiftui/view/accessibilityrepresentation(representation:))
- [AccessibilityChildBehavior](/documentation/swiftui/accessibilitychildbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
