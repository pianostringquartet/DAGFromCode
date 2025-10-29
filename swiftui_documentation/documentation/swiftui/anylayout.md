---
title: AnyLayout
description: A type-erased instance of the layout protocol.
source: https://developer.apple.com/documentation/swiftui/anylayout
timestamp: 2025-10-29T00:15:25.743Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AnyLayout

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A type-erased instance of the layout protocol.

```swift
@frozen struct AnyLayout
```

## Overview

Use an `AnyLayout` instance to enable dynamically changing the type of a layout container without destroying the state of the subviews. For example, you can create a layout that changes between horizontal and vertical layouts based on the current Dynamic Type setting:

```swift
struct DynamicLayoutExample: View {
    @Environment(\.dynamicTypeSize) var dynamicTypeSize

    var body: some View {
        let layout = dynamicTypeSize <= .medium ?
            AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())

        layout {
            Text("First label")
            Text("Second label")
        }
    }
}
```

The types that you use with `AnyLayout` must conform to the [Layout](/documentation/swiftui/layout) protocol. The above example chooses between the [HStack Layout](/documentation/swiftui/hstacklayout) and [VStack Layout](/documentation/swiftui/vstacklayout) types, which are versions of the built-in [HStack](/documentation/swiftui/hstack) and [VStack](/documentation/swiftui/vstack) containers that conform to the protocol. You can also use custom layout types that you define.

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [Layout](/documentation/swiftui/layout)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating the layout

- [init(_:)](/documentation/swiftui/anylayout/init(_:)) Creates a type-erased value that wraps the specified layout.

## Transitioning between layout types

- [HStackLayout](/documentation/swiftui/hstacklayout)
- [VStackLayout](/documentation/swiftui/vstacklayout)
- [ZStackLayout](/documentation/swiftui/zstacklayout)
- [GridLayout](/documentation/swiftui/gridlayout)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
