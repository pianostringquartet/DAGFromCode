---
title: init(content:)
description: Creates an Assistive Access scene.
source: https://developer.apple.com/documentation/swiftui/assistiveaccess/init(content:)
timestamp: 2025-10-29T00:14:27.213Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [assistiveaccess](/documentation/swiftui/assistiveaccess)

**Initializer**

# init(content:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Creates an Assistive Access scene.

```swift
init(@ViewBuilder content: () -> Content)
```

## Parameters

**content**

A closure that creates the content for the app when Assistive Access is enabled.



## Discussion

When Assistive Access is enabled, the given view is used as the root view of the app.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
