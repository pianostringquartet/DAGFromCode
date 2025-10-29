---
title: init(_:systemImage:content:)
description: Creates a new control group with the specified content that generates its label from a string and image name.
source: https://developer.apple.com/documentation/swiftui/controlgroup/init(_:systemimage:content:)
timestamp: 2025-10-29T00:10:01.416Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlgroup](/documentation/swiftui/controlgroup)

**Initializer**

# init(_:systemImage:content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 17.0+, visionOS 1.0+

> Creates a new control group with the specified content that generates its label from a string and image name.

```swift
nonisolated init<C, S>(_ title: S, systemImage: String, @ViewBuilder content: () -> C) where Content == LabeledControlGroupContent<C, Label<Text, Image>>, C : View, S : StringProtocol
```

## Parameters

**title**

A string that describes the contents of the group.



**systemImage**

The name of the image resource to lookup.



## Creating a control group with an image

- [init(_:image:content:)](/documentation/swiftui/controlgroup/init(_:image:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
