---
title: automatic
description: The default picker style, based on the picker’s context.
source: https://developer.apple.com/documentation/swiftui/pickerstyle/automatic
timestamp: 2025-10-29T00:09:12.291Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pickerstyle](/documentation/swiftui/pickerstyle)

**Type Property**

# automatic

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The default picker style, based on the picker’s context.

```swift
static var automatic: DefaultPickerStyle { get }
```

## Discussion

How a picker using the default picker style appears largely depends on the platform and the view type in which it appears. For example, in a standard view, the default picker styles by platform are:

- On iOS and watchOS the default is a wheel.
- On macOS, the default is a pop-up button.
- On tvOS, the default is a segmented control.

The default picker style may also take into account other factors — like whether the picker appears in a container view — when setting the appearance of a picker.

You can override a picker’s style. To apply the default style to a picker, or to a view that contains pickers, use the [pickerStyle(_:)](/documentation/swiftui/view/pickerstyle(_:)) modifier.

## Getting built-in picker styles

- [inline](/documentation/swiftui/pickerstyle/inline)
- [menu](/documentation/swiftui/pickerstyle/menu)
- [navigationLink](/documentation/swiftui/pickerstyle/navigationlink)
- [palette](/documentation/swiftui/pickerstyle/palette)
- [radioGroup](/documentation/swiftui/pickerstyle/radiogroup)
- [segmented](/documentation/swiftui/pickerstyle/segmented)
- [wheel](/documentation/swiftui/pickerstyle/wheel)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
