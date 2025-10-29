---
title: init(coder:)
description: Creates a hosting controller object from the contents of the specified archive.
source: https://developer.apple.com/documentation/swiftui/uihostingcontroller/init(coder:)
timestamp: 2025-10-29T00:12:36.374Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingcontroller](/documentation/swiftui/uihostingcontroller)

**Initializer**

# init(coder:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Creates a hosting controller object from the contents of the specified archive.

```swift
@MainActor @preconcurrency required dynamic init?(coder aDecoder: NSCoder)
```

## Discussion

The default implementation of this method throws an exception. To create your view controller from an archive, override this method and initialize the superclass using the [init(coder:rootView:)](/documentation/swiftui/uihostingcontroller/init(coder:rootview:)) method instead.

-Parameter coder: The decoder to use during initialization.

## Creating a hosting controller object

- [init(rootView:)](/documentation/swiftui/uihostingcontroller/init(rootview:))
- [init(coder:rootView:)](/documentation/swiftui/uihostingcontroller/init(coder:rootview:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
