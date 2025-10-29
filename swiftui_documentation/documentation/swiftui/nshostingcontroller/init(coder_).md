---
title: init(coder:)
description: Creates a hosting controller object from the contents of the specified archive.
source: https://developer.apple.com/documentation/swiftui/nshostingcontroller/init(coder:)
timestamp: 2025-10-29T00:13:54.124Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nshostingcontroller](/documentation/swiftui/nshostingcontroller)

**Initializer**

# init(coder:)

**Available on:** macOS 10.15+

> Creates a hosting controller object from the contents of the specified archive.

```swift
@MainActor @preconcurrency required dynamic init?(coder: NSCoder)
```

## Parameters

**coder**

The decoder to use during initialization.



## Discussion

The default implementation of this method throws an exception. To create your view controller from an archive, override this method and initialize the superclass using the [init(coder:rootView:)](/documentation/swiftui/nshostingcontroller/init(coder:rootview:)) method instead.

## Creating a hosting controller object

- [init(rootView:)](/documentation/swiftui/nshostingcontroller/init(rootview:))
- [init(coder:rootView:)](/documentation/swiftui/nshostingcontroller/init(coder:rootview:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
