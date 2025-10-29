---
title: init(wrappedValue:_:store:)
description: Creates a property that can save and restore tab sidebar customizations.
source: https://developer.apple.com/documentation/swiftui/scenestorage/init(wrappedvalue:_:store:)
timestamp: 2025-10-29T00:10:11.845Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scenestorage](/documentation/swiftui/scenestorage)

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

A key used to save and restore the value.



## Discussion

You can set this customization on the TabView using [tabViewCustomization(_:)](/documentation/swiftui/view/tabviewcustomization(_:)).

The tab view customization is typically not added to `SceneStorage`, but instead stored in `AppStorage` so the customizations are consistent across different scenes.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
