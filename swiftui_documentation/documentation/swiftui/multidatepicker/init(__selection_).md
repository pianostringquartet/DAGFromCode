---
title: init(_:selection:)
description: Creates an instance that selects multiple dates with an unbounded range.
source: https://developer.apple.com/documentation/swiftui/multidatepicker/init(_:selection:)
timestamp: 2025-10-29T00:10:18.008Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [multidatepicker](/documentation/swiftui/multidatepicker)

**Initializer**

# init(_:selection:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, visionOS 1.0+

> Creates an instance that selects multiple dates with an unbounded range.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, selection: Binding<Set<DateComponents>>)
```

## Parameters

**titleKey**

The key for the localized title of `self`, describing its purpose.



**selection**

The date values being displayed and selected.



## Picking dates

- [init(selection:label:)](/documentation/swiftui/multidatepicker/init(selection:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
