---
title: background(_:)
description: Sets the background contents for the hosting configuration’s enclosing cell.
source: https://developer.apple.com/documentation/swiftui/uihostingconfiguration/background(_:)
timestamp: 2025-10-29T00:12:15.083Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingconfiguration](/documentation/swiftui/uihostingconfiguration)

**Instance Method**

# background(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, tvOS 16.0+, visionOS 1.0+

> Sets the background contents for the hosting configuration’s enclosing cell.

```swift
func background<S>(_ style: S) -> UIHostingConfiguration<Content, _UIHostingConfigurationBackgroundView<S>> where S : ShapeStyle
```

## Parameters

**style**

The shape style to be used as the background of the cell.



## Discussion

The following example sets a custom view to the background of the cell:

```swift
UIHostingConfiguration {
    Text("My Contents")
}
.background(Color.blue)
```

## Setting the background

- [background(content:)](/documentation/swiftui/uihostingconfiguration/background(content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
