---
title: background(content:)
description: Sets the background contents for the hosting configuration’s enclosing cell.
source: https://developer.apple.com/documentation/swiftui/uihostingconfiguration/background(content:)
timestamp: 2025-10-29T00:13:34.740Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingconfiguration](/documentation/swiftui/uihostingconfiguration)

**Instance Method**

# background(content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, tvOS 16.0+, visionOS 1.0+

> Sets the background contents for the hosting configuration’s enclosing cell.

```swift
func background<B>(@ViewBuilder content: () -> B) -> UIHostingConfiguration<Content, B> where B : View
```

## Discussion

The following example sets a custom view to the background of the cell:

```swift
UIHostingConfiguration {
    Text("My Contents")
}
.background {
    MyBackgroundView()
}
```

## Setting the background

- [background(_:)](/documentation/swiftui/uihostingconfiguration/background(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
