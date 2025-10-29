---
title: buttonStyle(_:)
description: Sets the style for buttons within this view to a button style with a custom appearance and standard interaction behavior.
source: https://developer.apple.com/documentation/swiftui/view/buttonstyle(_:)
timestamp: 2025-10-29T00:11:45.360Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# buttonStyle(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the style for buttons within this view to a button style with a custom appearance and standard interaction behavior.

```swift
nonisolated func buttonStyle<S>(_ style: S) -> some View where S : ButtonStyle
```

## Discussion

Use this modifier to set a specific style for all button instances within a view:

```swift
HStack {
    Button("Sign In", action: signIn)
    Button("Register", action: register)
}
.buttonStyle(.bordered)
```

You can also use this modifier to set the style for controls that acquire a button style through composition, like the [Menu](/documentation/swiftui/menu) and [Toggle](/documentation/swiftui/toggle) views in the following example:

```swift
VStack {
    Menu("Terms and Conditions") {
        Button("Open in Preview", action: openInPreview)
        Button("Save as PDF", action: saveAsPDF)
    }
    Toggle("Remember Password", isOn: $isToggleOn)
    Toggle("Flag", isOn: $flagged)
    Button("Sign In", action: signIn)
}
.menuStyle(.button)
.toggleStyle(.button)
.buttonStyle(.bordered)
```

The [menuStyle(_:)](/documentation/swiftui/view/menustyle(_:)) modifier causes the Terms and Conditions menu to render as a button. Similarly, the [toggleStyle(_:)](/documentation/swiftui/view/togglestyle(_:)) modifier causes the two toggles to render as buttons. The button style modifier then causes not only the explicit Sign In [Button](/documentation/swiftui/button), but also the menu and toggles with button styling, to render with the bordered button style.

## Creating buttons

- [Button](/documentation/swiftui/button)
- [buttonBorderShape(_:)](/documentation/swiftui/view/buttonbordershape(_:))
- [buttonRepeatBehavior(_:)](/documentation/swiftui/view/buttonrepeatbehavior(_:))
- [buttonRepeatBehavior](/documentation/swiftui/environmentvalues/buttonrepeatbehavior)
- [ButtonBorderShape](/documentation/swiftui/buttonbordershape)
- [ButtonRole](/documentation/swiftui/buttonrole)
- [ButtonRepeatBehavior](/documentation/swiftui/buttonrepeatbehavior)
- [ButtonSizing](/documentation/swiftui/buttonsizing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
