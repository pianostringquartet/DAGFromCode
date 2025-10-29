---
title: init(_:)
description: Creates a custom vertical alignment of the specified type.
source: https://developer.apple.com/documentation/swiftui/verticalalignment/init(_:)
timestamp: 2025-10-29T00:11:06.910Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [verticalalignment](/documentation/swiftui/verticalalignment)

**Initializer**

# init(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a custom vertical alignment of the specified type.

```swift
init(_ id: any AlignmentID.Type)
```

## Parameters

**id**

The type of an identifier that uniquely identifies a vertical alignment.



## Discussion

Use this initializer to create a custom vertical alignment. Define an [Alignment ID](/documentation/swiftui/alignmentid) type, and then use that type to create a new static property on [Vertical Alignment](/documentation/swiftui/verticalalignment):

```swift
private struct FirstThirdAlignment: AlignmentID {
    static func defaultValue(in context: ViewDimensions) -> CGFloat {
        context.height / 3
    }
}

extension VerticalAlignment {
    static let firstThird = VerticalAlignment(FirstThirdAlignment.self)
}
```

Every vertical alignment instance that you create needs a unique identifier. For more information, see [Alignment ID](/documentation/swiftui/alignmentid).

## Creating a custom alignment

- [combineExplicit(_:)](/documentation/swiftui/verticalalignment/combineexplicit(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
