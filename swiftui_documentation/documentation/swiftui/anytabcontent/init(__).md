---
title: init(_:)
description: Create an instance that type-erases .
source: https://developer.apple.com/documentation/swiftui/anytabcontent/init(_:)
timestamp: 2025-10-29T00:14:04.458Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [anytabcontent](/documentation/swiftui/anytabcontent)

**Initializer**

# init(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Create an instance that type-erases .

```swift
init<T>(_ tabContent: T) where SelectionValue == T.TabValue, T : TabContent
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
