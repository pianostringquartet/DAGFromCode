---
title: init(label:description:actions:)
description: Creates an interface, consisting of a label and additional content, that you display when the content of your app is unavailable to users.
source: https://developer.apple.com/documentation/swiftui/contentunavailableview/init(label:description:actions:)
timestamp: 2025-10-29T00:10:17.713Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [contentunavailableview](/documentation/swiftui/contentunavailableview)

**Initializer**

# init(label:description:actions:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates an interface, consisting of a label and additional content, that you display when the content of your app is unavailable to users.

```swift
init(@ViewBuilder label: () -> Label, @ViewBuilder description: () -> Description = { EmptyView() }, @ViewBuilder actions: () -> Actions = { EmptyView() })
```

## Parameters

**label**

The label that describes the view.



**description**

The view that describes the interface.



**actions**

The content of the interface actions.



## Creating an unavailable view

- [init(_:image:description:)](/documentation/swiftui/contentunavailableview/init(_:image:description:))
- [init(_:systemImage:description:)](/documentation/swiftui/contentunavailableview/init(_:systemimage:description:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
