---
title: buttonSizing(_:)
description: The preferred sizing behavior of buttons in the view hierarchy.
source: https://developer.apple.com/documentation/swiftui/view/buttonsizing(_:)
timestamp: 2025-10-29T00:14:40.902Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# buttonSizing(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> The preferred sizing behavior of buttons in the view hierarchy.

```swift
nonisolated func buttonSizing(_ sizing: ButtonSizing) -> some View
```

## Parameters

**sizing**

A button sizing behavior that may be used to influence the primary axis size of buttons capable of adapting to it.



## Discussion

Views may use the specified button sizing when determining the size they choose to be in their primary axis within their parent view’s proposed size.

Many built-in controls that display as a button adapt to this view modifier. For example, you can make certain styles of [Button](/documentation/swiftui/button), [Picker](/documentation/swiftui/picker), [Control Group](/documentation/swiftui/controlgroup), and [Toggle](/documentation/swiftui/toggle) flexible by applying this modifier to them or their container.

This example creates a button that spans the width of its container, which you may want to do if the button is placed in a narrow context, like the sidebar of a welcome window.

```swift
Button("Open Document…", action: openDocument)
    .buttonSizing(.flexible)
```

Your own views and styles can adapt to this view modifier by reading the [button Sizing](/documentation/swiftui/environmentvalues/buttonsizing) environment value and applying an appropriate frame.

```swift
struct CustomButtonStyle: ButtonStyle {
    @Environment(\.buttonSizing) private var buttonSizing

    private var maxWidth: CGFloat {
        switch buttonSizing {
        case .flexible: .infinity
        case .fitted, _: nil
        }
    }

    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .frame(maxWidth: maxWidth)
            .background(.tint, in: Capsule())
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
