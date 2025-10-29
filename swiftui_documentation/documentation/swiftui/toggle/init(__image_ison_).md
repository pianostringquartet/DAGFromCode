---
title: init(_:image:isOn:)
description: Creates a toggle that generates its label from a localized string key and image resource.
source: https://developer.apple.com/documentation/swiftui/toggle/init(_:image:ison:)
timestamp: 2025-10-29T00:13:48.664Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toggle](/documentation/swiftui/toggle)

**Initializer**

# init(_:image:isOn:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a toggle that generates its label from a localized string key and image resource.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, image: ImageResource, isOn: Binding<Bool>)
```

## Parameters

**titleKey**

The key for the toggle’s localized title, that describes the purpose of the toggle.



**image**

The name of the image resource to lookup.



**isOn**

A binding to a property that indicates whether the toggle is on or off.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See `Text` for more information about localizing strings.

## Creating a toggle

- [init(_:isOn:)](/documentation/swiftui/toggle/init(_:ison:))
- [init(isOn:label:)](/documentation/swiftui/toggle/init(ison:label:))
- [init(_:systemImage:isOn:)](/documentation/swiftui/toggle/init(_:systemimage:ison:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
