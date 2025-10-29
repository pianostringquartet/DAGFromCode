---
title: init(coder:rootView:)
description: Creates a hosting view object from an archive and the specified SwiftUI view.
source: https://developer.apple.com/documentation/swiftui/nshostingview/init(coder:rootview:)
timestamp: 2025-10-29T00:10:21.165Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nshostingview](/documentation/swiftui/nshostingview)

**Initializer**

# init(coder:rootView:)

**Available on:** macOS 15.4+

> Creates a hosting view object from an archive and the specified SwiftUI view.

```swift
@MainActor @preconcurrency init?(coder: NSCoder, rootView: Content)
```

## Parameters

**coder**

The decoder to use during initialization.



**rootView**

The root view of the SwiftUI view hierarchy that you want to manage using this hosting view.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
