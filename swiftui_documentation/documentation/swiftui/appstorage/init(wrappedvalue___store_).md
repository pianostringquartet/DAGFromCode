---
title: init(wrappedValue:_:store:)
description: Creates a property that can save and restore tab sidebar customizations.
source: https://developer.apple.com/documentation/swiftui/appstorage/init(wrappedvalue:_:store:)
timestamp: 2025-10-29T00:10:43.917Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [appstorage](/documentation/swiftui/appstorage)

**Initializer**

# init(wrappedValue:_:store:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Creates a property that can save and restore tab sidebar customizations.

```swift
init(wrappedValue: Value = TabViewCustomization(), _ key: String, store: UserDefaults? = nil) where Value == TabViewCustomization
```

## Parameters

**wrappedValue**

The default value if the customization is not available for the given key.



**key**

The key to read and write the value to in the user defaults store.



**store**

The user defaults store to read and write to. A value of `nil` will use the user default store from the environment.



## Discussion

You can set this customization on the TabView using [tabViewCustomization(_:)](/documentation/swiftui/view/tabviewcustomization(_:)).

## Storing a value

- [init(_:store:)](/documentation/swiftui/appstorage/init(_:store:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
