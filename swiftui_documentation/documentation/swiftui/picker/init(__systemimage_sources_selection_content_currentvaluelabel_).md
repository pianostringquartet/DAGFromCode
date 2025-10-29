---
title: init(_:systemImage:sources:selection:content:currentValueLabel:)
description: Creates a picker bound to a collection of bindings that accepts a custom current value label and generates its label from a string.
source: https://developer.apple.com/documentation/swiftui/picker/init(_:systemimage:sources:selection:content:currentvaluelabel:)
timestamp: 2025-10-29T00:09:14.894Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [picker](/documentation/swiftui/picker)

**Initializer**

# init(_:systemImage:sources:selection:content:currentValueLabel:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a picker bound to a collection of bindings that accepts a custom current value label and generates its label from a string.

```swift
nonisolated init<C, S>(_ title: S, systemImage: String, sources: C, selection: KeyPath<C.Element, Binding<SelectionValue>>, @ViewBuilder content: () -> Content, @ViewBuilder currentValueLabel: () -> some View) where C : RandomAccessCollection, S : StringProtocol, C.Element == Binding<SelectionValue>
```

## Parameters

**title**

A string that describes the purpose of selecting an option.



**systemImage**

The name of the image resource to lookup.



**sources**

A collection of values used as the source for displaying the Picker’s selection.



**selection**

The key path of the values that determines the currently-selected options. When a user selects an option from the picker, the values at the key path of all items in the `sources` collection are updated with the selected option.



**content**

A view that contains the set of options.



**currentValueLabel**

A view that represents the current value of the picker.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
