---
title: foregroundColor(_:)
description: Sets the color of the text displayed by this view.
source: https://developer.apple.com/documentation/swiftui/text/foregroundcolor(_:)
timestamp: 2025-10-29T00:09:59.147Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# foregroundColor(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the color of the text displayed by this view.

```swift
nonisolated func foregroundColor(_ color: Color?) -> Text
```

## Parameters

**color**

The color to use when displaying this text.



## Return Value

A text view that uses the color value you supply.

## Discussion

Use this method to change the color of the text rendered by a text view.

For example, you can display the names of the colors red, green, and blue in their respective colors:

```swift
HStack {
    Text("Red").foregroundColor(.red)
    Text("Green").foregroundColor(.green)
    Text("Blue").foregroundColor(.blue)
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
