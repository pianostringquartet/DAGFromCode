---
title: init(_:image:action:)
description: Creates a button that generates its label from a localized string key and image resource.
source: https://developer.apple.com/documentation/swiftui/button/init(_:image:action:)
timestamp: 2025-10-29T00:14:25.631Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [button](/documentation/swiftui/button)

**Initializer**

# init(_:image:action:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a button that generates its label from a localized string key and image resource.

```swift
@preconcurrency nonisolated init(_ titleKey: LocalizedStringKey, image: ImageResource, action: @escaping @MainActor () -> Void)
```

## Parameters

**titleKey**

The key for the button’s localized title, that describes the purpose of the button’s `action`.



**image**

The image resource to lookup.



**action**

The action to perform when the user triggers the button.



## Discussion

This initializer creates a [Label](/documentation/swiftui/label) view on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See [Text](/documentation/swiftui/text) for more information about localizing strings.

## Creating a button

- [init(action:label:)](/documentation/swiftui/button/init(action:label:))
- [init(_:action:)](/documentation/swiftui/button/init(_:action:))
- [init(_:systemImage:action:)](/documentation/swiftui/button/init(_:systemimage:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
