---
title: init(selection:label:content:)
description: Creates a picker that displays a custom label.
source: https://developer.apple.com/documentation/swiftui/picker/init(selection:label:content:)
timestamp: 2025-10-29T00:11:50.586Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [picker](/documentation/swiftui/picker)

**Initializer**

# init(selection:label:content:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a picker that displays a custom label.

```swift
nonisolated init(selection: Binding<SelectionValue>, label: Label, @ViewBuilder content: () -> Content)
```

## Parameters

**selection**

A binding to a property that determines the currently-selected option.



**label**

A view that describes the purpose of selecting an option.



**content**

A view that contains the set of options.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
