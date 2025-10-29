---
title: init(_:selection:content:)
description: Creates a picker that generates its label from a localized string key.
source: https://developer.apple.com/documentation/swiftui/picker/init(_:selection:content:)
timestamp: 2025-10-29T00:10:37.040Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [picker](/documentation/swiftui/picker)

**Initializer**

# init(_:selection:content:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a picker that generates its label from a localized string key.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, selection: Binding<SelectionValue>, @ViewBuilder content: () -> Content)
```

## Parameters

**titleKey**

A localized string key that describes the purpose of selecting an option.



**selection**

A binding to a property that determines the currently-selected option.



**content**

A view that contains the set of options.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See [Text](/documentation/swiftui/text) for more information about localizing strings.

## Creating a picker

- [init(selection:content:label:)](/documentation/swiftui/picker/init(selection:content:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
