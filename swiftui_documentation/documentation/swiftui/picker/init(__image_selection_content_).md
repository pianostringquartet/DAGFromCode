---
title: init(_:image:selection:content:)
description: Creates a picker that generates its label from a localized string key and image resource
source: https://developer.apple.com/documentation/swiftui/picker/init(_:image:selection:content:)
timestamp: 2025-10-29T00:10:10.398Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [picker](/documentation/swiftui/picker)

**Initializer**

# init(_:image:selection:content:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a picker that generates its label from a localized string key and image resource

```swift
nonisolated init(_ titleKey: LocalizedStringKey, image: ImageResource, selection: Binding<SelectionValue>, @ViewBuilder content: () -> Content)
```

## Parameters

**titleKey**

A localized string key that describes the purpose of selecting an option.



**image**

The name of the image resource to lookup.



**selection**

A binding to a property that determines the currently-selected option.



**content**

A view that contains the set of options.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See [Text](/documentation/swiftui/text) for more information about localizing strings.

## Creating a picker with an image label

- [init(_:image:sources:selection:content:)](/documentation/swiftui/picker/init(_:image:sources:selection:content:))
- [init(_:systemImage:selection:content:)](/documentation/swiftui/picker/init(_:systemimage:selection:content:))
- [init(_:systemImage:sources:selection:content:)](/documentation/swiftui/picker/init(_:systemimage:sources:selection:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
