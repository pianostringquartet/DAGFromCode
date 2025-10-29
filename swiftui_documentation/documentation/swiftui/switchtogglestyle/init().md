---
title: init()
description: Creates a switch toggle style.
source: https://developer.apple.com/documentation/swiftui/switchtogglestyle/init()
timestamp: 2025-10-29T00:11:22.778Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [switchtogglestyle](/documentation/swiftui/switchtogglestyle)

**Initializer**

# init()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 18.0+, visionOS 1.0+, watchOS 6.0+

> Creates a switch toggle style.

```swift
init()
```

## Discussion

Don’t call this initializer directly. Instead, use the [switch](/documentation/swiftui/togglestyle/switch) static variable to create this style:

```swift
Toggle("Enhance Sound", isOn: $isEnhanced)
    .toggleStyle(.switch)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
