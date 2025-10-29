---
title: init(_:systemImage:action:)
description: Creates a button that generates its label from a localized string key and system image name.
source: https://developer.apple.com/documentation/swiftui/button/init(_:systemimage:action:)
timestamp: 2025-10-29T00:12:52.908Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [button](/documentation/swiftui/button)

**Initializer**

# init(_:systemImage:action:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a button that generates its label from a localized string key and system image name.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, systemImage: String, action: @escaping @MainActor () -> Void)
```

## Parameters

**titleKey**

The key for the button’s localized title, that describes the purpose of the button’s `action`.



**systemImage**

The name of the image resource to lookup.



**action**

The action to perform when the user triggers the button.



## Discussion

This initializer creates a [Label](/documentation/swiftui/label) view on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See [Text](/documentation/swiftui/text) for more information about localizing strings.

## Creating a button

- [init(action:label:)](/documentation/swiftui/button/init(action:label:))
- [init(_:action:)](/documentation/swiftui/button/init(_:action:))
- [init(_:image:action:)](/documentation/swiftui/button/init(_:image:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
