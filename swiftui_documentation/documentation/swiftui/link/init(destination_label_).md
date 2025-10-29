---
title: init(destination:label:)
description: Creates a control, consisting of a URL and a label, used to navigate to the given URL.
source: https://developer.apple.com/documentation/swiftui/link/init(destination:label:)
timestamp: 2025-10-29T00:15:28.576Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [link](/documentation/swiftui/link)

**Initializer**

# init(destination:label:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a control, consisting of a URL and a label, used to navigate to the given URL.

```swift
@MainActor @preconcurrency init(destination: URL, @ViewBuilder label: () -> Label)
```

## Parameters

**destination**

The URL for the link.



**label**

A view that describes the destination of URL.



## Creating a link

- [init(_:destination:)](/documentation/swiftui/link/init(_:destination:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
