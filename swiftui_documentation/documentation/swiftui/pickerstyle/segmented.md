---
title: segmented
description: A picker style that presents the options in a segmented control.
source: https://developer.apple.com/documentation/swiftui/pickerstyle/segmented
timestamp: 2025-10-29T00:12:43.357Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pickerstyle](/documentation/swiftui/pickerstyle)

**Type Property**

# segmented

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+

> A picker style that presents the options in a segmented control.

```swift
static var segmented: SegmentedPickerStyle { get }
```

## Discussion

Use this style when there are two to five options. Consider using [menu](/documentation/swiftui/pickerstyle/menu) when there are more than five options.

For each option’s label, use sentence-style capitalization without ending punctuation, like a period or colon.

To apply this style to a picker, or to a view that contains pickers, use the [pickerStyle(_:)](/documentation/swiftui/view/pickerstyle(_:)) modifier.

## Getting built-in picker styles

- [automatic](/documentation/swiftui/pickerstyle/automatic)
- [inline](/documentation/swiftui/pickerstyle/inline)
- [menu](/documentation/swiftui/pickerstyle/menu)
- [navigationLink](/documentation/swiftui/pickerstyle/navigationlink)
- [palette](/documentation/swiftui/pickerstyle/palette)
- [radioGroup](/documentation/swiftui/pickerstyle/radiogroup)
- [wheel](/documentation/swiftui/pickerstyle/wheel)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
