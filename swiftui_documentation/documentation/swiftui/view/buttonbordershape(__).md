---
title: buttonBorderShape(_:)
description: Sets the border shape for buttons in this view.
source: https://developer.apple.com/documentation/swiftui/view/buttonbordershape(_:)
timestamp: 2025-10-29T00:14:32.990Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# buttonBorderShape(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets the border shape for buttons in this view.

```swift
nonisolated func buttonBorderShape(_ shape: ButtonBorderShape) -> some View
```

## Parameters

**shape**

The shape to use.



## Discussion

The border shape is used to draw the platter for a bordered button.

The border shape affects buttons of the [bordered](/documentation/swiftui/primitivebuttonstyle/bordered) and [bordered Prominent](/documentation/swiftui/primitivebuttonstyle/borderedprominent) styles.

> [!NOTE]
> In macOS 15 and earlier, some border shapes are only applicable to bordered buttons in widgets.

## Creating buttons

- [Button](/documentation/swiftui/button)
- [buttonStyle(_:)](/documentation/swiftui/view/buttonstyle(_:))
- [buttonRepeatBehavior(_:)](/documentation/swiftui/view/buttonrepeatbehavior(_:))
- [buttonRepeatBehavior](/documentation/swiftui/environmentvalues/buttonrepeatbehavior)
- [ButtonBorderShape](/documentation/swiftui/buttonbordershape)
- [ButtonRole](/documentation/swiftui/buttonrole)
- [ButtonRepeatBehavior](/documentation/swiftui/buttonrepeatbehavior)
- [ButtonSizing](/documentation/swiftui/buttonsizing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
