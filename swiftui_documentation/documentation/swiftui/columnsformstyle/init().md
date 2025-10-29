---
title: init()
description: A non-scrolling form style with a trailing aligned column of labels next to a leading aligned column of values.
source: https://developer.apple.com/documentation/swiftui/columnsformstyle/init()
timestamp: 2025-10-29T00:14:31.625Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [columnsformstyle](/documentation/swiftui/columnsformstyle)

**Initializer**

# init()

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A non-scrolling form style with a trailing aligned column of labels next to a leading aligned column of values.

```swift
init()
```

## Discussion

Don’t call this initializer directly. Instead, use the [columns](/documentation/swiftui/formstyle/columns) static variable to create this style:

```swift
Form {
   ...
}
.formStyle(.columns)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
