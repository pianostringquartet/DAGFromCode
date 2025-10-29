---
title: init()
description: Creates a default form style.
source: https://developer.apple.com/documentation/swiftui/automaticformstyle/init()
timestamp: 2025-10-29T00:10:41.566Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [automaticformstyle](/documentation/swiftui/automaticformstyle)

**Initializer**

# init()

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a default form style.

```swift
init()
```

## Discussion

Don’t call this initializer directly. Instead, use the [automatic](/documentation/swiftui/formstyle/automatic) static variable to create this style:

```swift
Form {
   ...
}
.formStyle(.automatic)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
