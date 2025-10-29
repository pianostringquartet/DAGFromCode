---
title: init(_:)
description: Creates a control group based on a style configuration.
source: https://developer.apple.com/documentation/swiftui/controlgroup/init(_:)
timestamp: 2025-10-29T00:10:26.215Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlgroup](/documentation/swiftui/controlgroup)

**Initializer**

# init(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 17.0+, visionOS 1.0+

> Creates a control group based on a style configuration.

```swift
nonisolated init(_ configuration: ControlGroupStyleConfiguration)
```

## Discussion

Use this initializer within the [makeBody(configuration:)](/documentation/swiftui/controlgroupstyle/makebody(configuration:)) method of a [Control Group Style](/documentation/swiftui/controlgroupstyle) instance to create an instance of the control group being styled. This is useful for custom control group styles that modify the current control group style.

For example, the following code creates a new, custom style that places a red border around the current control group:

```swift
struct RedBorderControlGroupStyle: ControlGroupStyle {
    func makeBody(configuration: Configuration) -> some View {
        ControlGroup(configuration)
            .border(Color.red)
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
