---
title: role
description: An optional semantic role that describes the button’s purpose.
source: https://developer.apple.com/documentation/swiftui/buttonstyleconfiguration/role
timestamp: 2025-10-29T00:09:16.083Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [buttonstyleconfiguration](/documentation/swiftui/buttonstyleconfiguration)

**Instance Property**

# role

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> An optional semantic role that describes the button’s purpose.

```swift
let role: ButtonRole?
```

## Discussion

A value of `nil` means that the Button doesn’t have an assigned role. If the button does have a role, use it to make adjustments to the button’s appearance. The following example shows a custom style that uses bold text when the role is [cancel](/documentation/swiftui/buttonrole/cancel), [red](/documentation/swiftui/shapestyle/red) text when the role is [destructive](/documentation/swiftui/buttonrole/destructive), and adds no special styling otherwise:

```swift
struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(
                configuration.role == .cancel ? .title2.bold() : .title2)
            .foregroundColor(
                configuration.role == .destructive ? Color.red : nil)
    }
}
```

You can create one of each button using this style to see the effect:

```swift
VStack(spacing: 20) {
    Button("Cancel", role: .cancel) {}
    Button("Delete", role: .destructive) {}
    Button("Continue") {}
}
.buttonStyle(MyButtonStyle())
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
