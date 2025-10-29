---
title: init(coder:)
description: Creates a hosting view object from the contents of the specified archive.
source: https://developer.apple.com/documentation/swiftui/nshostingview/init(coder:)
timestamp: 2025-10-29T00:15:23.606Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nshostingview](/documentation/swiftui/nshostingview)

**Initializer**

# init(coder:)

**Available on:** macOS 10.15+

> Creates a hosting view object from the contents of the specified archive.

```swift
@MainActor @preconcurrency required dynamic init?(coder aDecoder: NSCoder)
```

## Discussion

The default implementation of this method throws an exception. To create your view from an archive, override this method and initialize the superclass using the [init(coder:rootView:)](/documentation/swiftui/nshostingview/init(coder:rootview:)) method instead.

## Creating a hosting view

- [init(rootView:)](/documentation/swiftui/nshostingview/init(rootview:))
- [prepareForReuse()](/documentation/swiftui/nshostingview/prepareforreuse())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
