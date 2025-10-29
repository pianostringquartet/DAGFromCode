---
title: init(content:label:)
description: Creates a standard labeled element, with a view that conveys the value of the element and a label.
source: https://developer.apple.com/documentation/swiftui/labeledcontent/init(content:label:)
timestamp: 2025-10-29T00:13:08.176Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [labeledcontent](/documentation/swiftui/labeledcontent)

**Initializer**

# init(content:label:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a standard labeled element, with a view that conveys the value of the element and a label.

```swift
nonisolated init(@ViewBuilder content: () -> Content, @ViewBuilder label: () -> Label)
```

## Parameters

**content**

The view that conveys the value of the resulting labeled element.



**label**

The label that describes the purpose of the result.



## Creating labeled content

- [init(_:content:)](/documentation/swiftui/labeledcontent/init(_:content:))
- [init(_:value:)](/documentation/swiftui/labeledcontent/init(_:value:))
- [init(_:value:format:)](/documentation/swiftui/labeledcontent/init(_:value:format:))
- [init(_:)](/documentation/swiftui/labeledcontent/init(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
