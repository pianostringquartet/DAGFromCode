---
title: navigationLink
description: A picker style represented by a navigation link that presents the options by pushing a List-style picker view.
source: https://developer.apple.com/documentation/swiftui/pickerstyle/navigationlink
timestamp: 2025-10-29T00:15:22.376Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pickerstyle](/documentation/swiftui/pickerstyle)

**Type Property**

# navigationLink

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A picker style represented by a navigation link that presents the options by pushing a List-style picker view.

```swift
static var navigationLink: NavigationLinkPickerStyle { get }
```

## Discussion

In navigation stacks, prefer the default [menu](/documentation/swiftui/pickerstyle/menu) style. Consider the navigation link style when you have a large number of options or your design is better expressed by pushing onto a stack.

To apply this style to a picker, or to a view that contains pickers, use the [pickerStyle(_:)](/documentation/swiftui/view/pickerstyle(_:)) modifier.

## Getting built-in picker styles

- [automatic](/documentation/swiftui/pickerstyle/automatic)
- [inline](/documentation/swiftui/pickerstyle/inline)
- [menu](/documentation/swiftui/pickerstyle/menu)
- [palette](/documentation/swiftui/pickerstyle/palette)
- [radioGroup](/documentation/swiftui/pickerstyle/radiogroup)
- [segmented](/documentation/swiftui/pickerstyle/segmented)
- [wheel](/documentation/swiftui/pickerstyle/wheel)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
