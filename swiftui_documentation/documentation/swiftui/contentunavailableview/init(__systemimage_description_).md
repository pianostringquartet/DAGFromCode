---
title: init(_:systemImage:description:)
description: Creates an interface, consisting of a title generated from a localized string, a system icon image and additional content, that you display when the content of your app is unavailable to users.
source: https://developer.apple.com/documentation/swiftui/contentunavailableview/init(_:systemimage:description:)
timestamp: 2025-10-29T00:09:25.759Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [contentunavailableview](/documentation/swiftui/contentunavailableview)

**Initializer**

# init(_:systemImage:description:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates an interface, consisting of a title generated from a localized string, a system icon image and additional content, that you display when the content of your app is unavailable to users.

```swift
nonisolated init(_ title: LocalizedStringKey, systemImage name: String, description: Text? = nil)
```

## Parameters

**title**

A title generated from a localized string.



**description**

The view that describes the interface.



## Creating an unavailable view

- [init(label:description:actions:)](/documentation/swiftui/contentunavailableview/init(label:description:actions:))
- [init(_:image:description:)](/documentation/swiftui/contentunavailableview/init(_:image:description:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
