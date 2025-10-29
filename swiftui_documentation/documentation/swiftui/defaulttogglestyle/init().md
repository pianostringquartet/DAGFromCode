---
title: init()
description: Creates a default toggle style.
source: https://developer.apple.com/documentation/swiftui/defaulttogglestyle/init()
timestamp: 2025-10-29T00:15:25.873Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [defaulttogglestyle](/documentation/swiftui/defaulttogglestyle)

**Initializer**

# init()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a default toggle style.

```swift
init()
```

## Discussion

Don’t call this initializer directly. Instead, use the [automatic](/documentation/swiftui/togglestyle/automatic) static variable to create this style:

```swift
Toggle("Enhance Sound", isOn: $isEnhanced)
    .toggleStyle(.automatic)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
