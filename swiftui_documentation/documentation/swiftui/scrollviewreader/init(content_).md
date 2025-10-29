---
title: init(content:)
description: Creates an instance that can perform programmatic scrolling of its child scroll views.
source: https://developer.apple.com/documentation/swiftui/scrollviewreader/init(content:)
timestamp: 2025-10-29T00:11:19.906Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrollviewreader](/documentation/swiftui/scrollviewreader)

**Initializer**

# init(content:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates an instance that can perform programmatic scrolling of its child scroll views.

```swift
init(@ViewBuilder content: @escaping (ScrollViewProxy) -> Content)
```

## Parameters

**content**

The reader’s content, containing one or more scroll views. This view builder receives a [Scroll View Proxy](/documentation/swiftui/scrollviewproxy) instance that you use to perform scrolling.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
