---
title: init()
description: Creates a checkbox toggle style.
source: https://developer.apple.com/documentation/swiftui/checkboxtogglestyle/init()
timestamp: 2025-10-29T00:15:17.142Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [checkboxtogglestyle](/documentation/swiftui/checkboxtogglestyle)

**Initializer**

# init()

**Available on:** macOS 10.15+

> Creates a checkbox toggle style.

```swift
init()
```

## Discussion

Don’t call this initializer directly. Instead, use the [checkbox](/documentation/swiftui/togglestyle/checkbox) static variable to create this style:

```swift
Toggle("Close windows when quitting an app", isOn: $doesClose)
    .toggleStyle(.checkbox)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
