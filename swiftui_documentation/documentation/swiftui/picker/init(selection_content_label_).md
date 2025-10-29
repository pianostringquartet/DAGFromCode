---
title: init(selection:content:label:)
description: Creates a picker that displays a custom label.
source: https://developer.apple.com/documentation/swiftui/picker/init(selection:content:label:)
timestamp: 2025-10-29T00:14:10.969Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [picker](/documentation/swiftui/picker)

**Initializer**

# init(selection:content:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a picker that displays a custom label.

```swift
nonisolated init(selection: Binding<SelectionValue>, @ViewBuilder content: () -> Content, @ViewBuilder label: () -> Label)
```

## Parameters

**selection**

A binding to a property that determines the currently-selected option.



**content**

A view that contains the set of options.



**label**

A view that describes the purpose of selecting an option.



## Creating a picker

- [init(_:selection:content:)](/documentation/swiftui/picker/init(_:selection:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
