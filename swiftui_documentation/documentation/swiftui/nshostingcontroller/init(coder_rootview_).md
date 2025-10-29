---
title: init(coder:rootView:)
description: Creates a hosting controller object from an archive and the specified SwiftUI view.
source: https://developer.apple.com/documentation/swiftui/nshostingcontroller/init(coder:rootview:)
timestamp: 2025-10-29T00:10:09.821Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nshostingcontroller](/documentation/swiftui/nshostingcontroller)

**Initializer**

# init(coder:rootView:)

**Available on:** macOS 10.15+

> Creates a hosting controller object from an archive and the specified SwiftUI view.

```swift
@MainActor @preconcurrency init?(coder: NSCoder, rootView: Content)
```

## Parameters

**coder**

The decoder to use during initialization.



**rootView**

The root view of the SwiftUI view hierarchy that you want to manage using this view controller.



## Creating a hosting controller object

- [init(rootView:)](/documentation/swiftui/nshostingcontroller/init(rootview:))
- [init(coder:)](/documentation/swiftui/nshostingcontroller/init(coder:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
