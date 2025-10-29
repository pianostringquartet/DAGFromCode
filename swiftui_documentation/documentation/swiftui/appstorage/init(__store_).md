---
title: init(_:store:)
description: Creates a property that can read and write an Optional boolean user default.
source: https://developer.apple.com/documentation/swiftui/appstorage/init(_:store:)
timestamp: 2025-10-29T00:09:10.063Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [appstorage](/documentation/swiftui/appstorage)

**Initializer**

# init(_:store:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a property that can read and write an Optional boolean user default.

```swift
init(_ key: String, store: UserDefaults? = nil) where Value == Bool?
```

## Parameters

**key**

The key to read and write the value to in the user defaults store.



**store**

The user defaults store to read and write to. A value of `nil` will use the user default store from the environment.



## Discussion

Defaults to nil if there is no restored value.

## Storing a value

- [init(wrappedValue:_:store:)](/documentation/swiftui/appstorage/init(wrappedvalue:_:store:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
