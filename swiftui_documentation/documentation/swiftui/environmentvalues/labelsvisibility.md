---
title: labelsVisibility
description: The labels visibility set by .
source: https://developer.apple.com/documentation/swiftui/environmentvalues/labelsvisibility
timestamp: 2025-10-29T00:14:09.440Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# labelsVisibility

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The labels visibility set by .

```swift
var labelsVisibility: Visibility { get set }
```

## Discussion

Read this environment value from within a view to obtain the preferred visibility for labels within the hierarchy. If you would like to dynamically hide the label of your custom view, make sure to include an accessibility label via the [accessibilityLabel(content:)](/documentation/swiftui/view/accessibilitylabel(content:)) modifier as illustrated below:

```swift
@Environment(\.labelsVisibility)
private var labelsVisibility

var body: some View {
    VStack {
        QuizCardView()
        if labelsVisibility != .hidden {
            label
        }
    }
    .accessibilityLabel {
        label
    }
}

private var label: some View {
    Text("Quiz Card")
}
```

## Hiding system elements

- [labelsHidden()](/documentation/swiftui/view/labelshidden())
- [labelsVisibility(_:)](/documentation/swiftui/view/labelsvisibility(_:))
- [menuIndicator(_:)](/documentation/swiftui/view/menuindicator(_:))
- [statusBarHidden(_:)](/documentation/swiftui/view/statusbarhidden(_:))
- [persistentSystemOverlays(_:)](/documentation/swiftui/view/persistentsystemoverlays(_:))
- [Visibility](/documentation/swiftui/visibility)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
