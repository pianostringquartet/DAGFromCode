---
title: minSize(width:height:)
description: Sets the minimum size for the configuration.
source: https://developer.apple.com/documentation/swiftui/uihostingconfiguration/minsize(width:height:)
timestamp: 2025-10-29T00:11:17.967Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingconfiguration](/documentation/swiftui/uihostingconfiguration)

**Instance Method**

# minSize(width:height:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, tvOS 16.0+, visionOS 1.0+

> Sets the minimum size for the configuration.

```swift
func minSize(width: CGFloat? = nil, height: CGFloat? = nil) -> UIHostingConfiguration<Content, Background>
```

## Parameters

**width**

The value to use for the width dimension. A value of `nil` indicates that the system default should be used.



**height**

The value to use for the height dimension. A value of `nil` indicates that the system default should be used.



## Discussion

Use this modifier to indicate that a configuration’s associated cell can be resized to a specific minimum. The following example allows the cell to be compressed to zero size:

```swift
UIHostingConfiguration {
    Text("My Contents")
}
.minSize(width: 0, height: 0)
```

## Setting a size

- [minSize()](/documentation/swiftui/uihostingconfiguration/minsize())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
