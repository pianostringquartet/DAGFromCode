---
title: secondary
description: A shape style that maps to the second level of the current content style.
source: https://developer.apple.com/documentation/swiftui/shapestyle/secondary-swift.type.property
timestamp: 2025-10-29T00:13:06.816Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shapestyle](/documentation/swiftui/shapestyle)

**Type Property**

# secondary

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A shape style that maps to the second level of the current content style.

```swift
static var secondary: HierarchicalShapeStyle { get }
```

## Discussion

This hierarchical style maps to the second level of the current foreground style, or to the second level of the default foreground style if you haven’t set a foreground style in the view’s environment. You typically set a foreground style by supplying a non-hierarchical style to the [foregroundStyle(_:)](/documentation/swiftui/view/foregroundstyle(_:)) modifier.

For information about how to use shape styles, see [Shape Style](/documentation/swiftui/shapestyle).

## Hierarchical styles

- [secondary](/documentation/swiftui/shapestyle/secondary-swift.property)
- [tertiary](/documentation/swiftui/shapestyle/tertiary-swift.property)
- [quaternary](/documentation/swiftui/shapestyle/quaternary-swift.property)
- [quinary](/documentation/swiftui/shapestyle/quinary-swift.property)
- [primary](/documentation/swiftui/shapestyle/primary)
- [tertiary](/documentation/swiftui/shapestyle/tertiary-swift.type.property)
- [quaternary](/documentation/swiftui/shapestyle/quaternary-swift.type.property)
- [quinary](/documentation/swiftui/shapestyle/quinary-swift.type.property)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
