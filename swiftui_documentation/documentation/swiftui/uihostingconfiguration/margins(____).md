---
title: margins(_:_:)
description: Sets the margins around the content of the configuration.
source: https://developer.apple.com/documentation/swiftui/uihostingconfiguration/margins(_:_:)
timestamp: 2025-10-29T00:10:11.293Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingconfiguration](/documentation/swiftui/uihostingconfiguration)

**Instance Method**

# margins(_:_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, tvOS 16.0+, visionOS 1.0+

> Sets the margins around the content of the configuration.

```swift
func margins(_ edges: Edge.Set = .all, _ insets: EdgeInsets) -> UIHostingConfiguration<Content, Background>
```

## Parameters

**edges**

The edges to apply the insets. Any edges not specified will use the system default values. The default value is [all](/documentation/swiftui/edge/set/all).



**insets**

The insets to apply.



## Discussion

Use this modifier to replace the default margins applied to the root of the configuration. The following example creates 10 points of space between the content and the background on the leading edge and 20 points of space on the trailing edge:

```swift
UIHostingConfiguration {
    Text("My Contents")
}
.margins(.horizontal, 20.0)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
