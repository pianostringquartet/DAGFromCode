---
title: init(_:image:content:)
description: Creates a new control group with the specified content that generates its label from a string and image name.
source: https://developer.apple.com/documentation/swiftui/controlgroup/init(_:image:content:)
timestamp: 2025-10-29T00:15:28.207Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlgroup](/documentation/swiftui/controlgroup)

**Initializer**

# init(_:image:content:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Creates a new control group with the specified content that generates its label from a string and image name.

```swift
nonisolated init<C, S>(_ title: S, image: ImageResource, @ViewBuilder content: () -> C) where Content == LabeledControlGroupContent<C, Label<Text, Image>>, C : View, S : StringProtocol
```

## Parameters

**title**

A string that describes the contents of the group.



## Creating a control group with an image

- [init(_:systemImage:content:)](/documentation/swiftui/controlgroup/init(_:systemimage:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
