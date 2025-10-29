---
title: init(root:)
description: Creates a navigation stack that manages its own navigation state.
source: https://developer.apple.com/documentation/swiftui/navigationstack/init(root:)
timestamp: 2025-10-29T00:09:16.990Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationstack](/documentation/swiftui/navigationstack)

**Initializer**

# init(root:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a navigation stack that manages its own navigation state.

```swift
@MainActor @preconcurrency init(@ViewBuilder root: () -> Root) where Data == NavigationPath
```

## Parameters

**root**

The view to display when the stack is empty.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
