---
title: init(coder:rootView:)
description: Creates a hosting controller object from an archive and the specified SwiftUI view.
source: https://developer.apple.com/documentation/swiftui/uihostingcontroller/init(coder:rootview:)
timestamp: 2025-10-29T00:10:55.271Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingcontroller](/documentation/swiftui/uihostingcontroller)

**Initializer**

# init(coder:rootView:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Creates a hosting controller object from an archive and the specified SwiftUI view.

```swift
@MainActor @preconcurrency init?(coder aDecoder: NSCoder, rootView: Content)
```

## Parameters

**rootView**

The root view of the SwiftUI view hierarchy that you want to manage using this view controller.



## Return Value

A `UIViewController` object that you can present from your interface.

## Creating a hosting controller object

- [init(rootView:)](/documentation/swiftui/uihostingcontroller/init(rootview:))
- [init(coder:)](/documentation/swiftui/uihostingcontroller/init(coder:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
