---
title: init(_:systemImage:selection:content:currentValueLabel:)
description: Creates a picker that accepts a custom current value label and generates its label from a localized string key and system image.
source: https://developer.apple.com/documentation/swiftui/picker/init(_:systemimage:selection:content:currentvaluelabel:)
timestamp: 2025-10-29T00:13:48.661Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [picker](/documentation/swiftui/picker)

**Initializer**

# init(_:systemImage:selection:content:currentValueLabel:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a picker that accepts a custom current value label and generates its label from a localized string key and system image.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, systemImage: String, selection: Binding<SelectionValue>, @ViewBuilder content: () -> Content, @ViewBuilder currentValueLabel: () -> some View)
```

## Parameters

**titleKey**

A localized string key that describes the purpose of selecting an option.



**systemImage**

The name of the image resource to lookup.



**selection**

A binding to a property that determines the currently-selected option.



**content**

A view that contains the set of options.



**currentValueLabel**

A view that represents the current value of the picker.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See [Text](/documentation/swiftui/text) for more information about localizing strings.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
