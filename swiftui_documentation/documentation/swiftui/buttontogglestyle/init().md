---
title: init()
description: Creates a button toggle style.
source: https://developer.apple.com/documentation/swiftui/buttontogglestyle/init()
timestamp: 2025-10-29T00:09:45.919Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [buttontogglestyle](/documentation/swiftui/buttontogglestyle)

**Initializer**

# init()

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+, watchOS 9.0+

> Creates a button toggle style.

```swift
init()
```

## Discussion

Don’t call this initializer directly. Instead, use the [button](/documentation/swiftui/togglestyle/button) static variable to create this style:

```swift
Toggle(isOn: $isFlagged) {
    Label("Flag", systemImage: "flag.fill")
}
.toggleStyle(.button)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
