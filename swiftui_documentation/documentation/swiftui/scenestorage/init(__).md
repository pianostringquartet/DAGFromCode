---
title: init(_:)
description: Creates a property that can save and restore an Optional boolean.
source: https://developer.apple.com/documentation/swiftui/scenestorage/init(_:)
timestamp: 2025-10-29T00:13:01.764Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scenestorage](/documentation/swiftui/scenestorage)

**Initializer**

# init(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a property that can save and restore an Optional boolean.

```swift
init(_ key: String) where Value == Bool?
```

## Parameters

**key**

A key used to save and restore the value.



## Discussion

Defaults to nil if there is no restored value

## Storing a value

- [init(wrappedValue:_:)](/documentation/swiftui/scenestorage/init(wrappedvalue:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
