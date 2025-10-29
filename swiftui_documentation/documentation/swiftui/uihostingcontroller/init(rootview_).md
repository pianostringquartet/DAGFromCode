---
title: init(rootView:)
description: Creates a hosting controller object that wraps the specified SwiftUI view.
source: https://developer.apple.com/documentation/swiftui/uihostingcontroller/init(rootview:)
timestamp: 2025-10-29T00:11:07.261Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingcontroller](/documentation/swiftui/uihostingcontroller)

**Initializer**

# init(rootView:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Creates a hosting controller object that wraps the specified SwiftUI view.

```swift
@MainActor @preconcurrency init(rootView: Content)
```

## Parameters

**rootView**

The root view of the SwiftUI view hierarchy that you want to manage using the hosting view controller.



## Return Value

A `UIHostingController` object initialized with the specified SwiftUI view.

## Creating a hosting controller object

- [init(coder:rootView:)](/documentation/swiftui/uihostingcontroller/init(coder:rootview:))
- [init(coder:)](/documentation/swiftui/uihostingcontroller/init(coder:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
