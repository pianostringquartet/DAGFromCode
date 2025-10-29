---
title: ContainerValues
description: A collection of container values associated with a given view.
source: https://developer.apple.com/documentation/swiftui/containervalues
timestamp: 2025-10-29T00:13:01.942Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ContainerValues

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A collection of container values associated with a given view.

```swift
struct ContainerValues
```

## Overview

SwiftUI exposes a collection of values associated with each view in the `ContainerValues` structure.

Container values you set on a given view affect only that view. Like preferences, container values are able to be read by views above the view they’re set on. Unlike preferences, however, container values don’t have merging behavior because they don’t escape their closest container. In the following example, the container value is set on the contained view, but is dropped when it reaches the containing [VStack](/documentation/swiftui/vstack).

```swift
VStack {
    Text("A")
        .containerValue(\.myCustomValue, 1) // myCustomValue = 1
    Text("B")
        .containerValue(\.myCustomValue, 2) // myCustomValue = 2
    // container values are unaffected by views that aren't containers:
    Text("C")
        .containerValue(\.myCustomValue, 3)
        .padding() // myCustomValue = 3
} // myCustomValue = its default value, values do not escape the container
```

Even if a stack has only one child, container values still won’t be readable outside of the `VStack`. Container values don’t escape a container even if the container has only one child.

In this example, a direct subview writes a container value, allowing its direct container view to read it back:

```swift
@ViewBuilder var content: some View {
    Text("A")
        .containerValue(\.myCustomValue, 1)
}

ForEach(subviews: content) { subview in
    Text("value = \(subview.containerValues.myCustomValue)") // shows "value = 1"
}
```

However in the next example, the wrapping `VStack` means the `Text` view is not a direct subview of the outer container, so that container cannot read the changed value:

```swift
@ViewBuilder var containedContent: some View {
    VStack {
        Text("A")
            .containerValue(\.myCustomValue, 1)
    }
}

ForEach(subviews: containedContent) { subviews in
    Text("value = \(subview.containerValues.myCustomValue)") // shows the default value
}
```

Create a custom container value by declaring a new property in an extension to the container values structure and applying the [Entry()](/documentation/swiftui/entry()) macro to the variable declaration:

```swift
extension ContainerValues {
    @Entry var myCustomValue: String = "Default value"
}
```

Clients of your value then access the value by reading it from the container values collection of a [Subview](/documentation/swiftui/subview).

Related pieces of container configuration can also be grouped under the same container values key.

```swift
struct PinPosition {
    var rotation: Double = 0
    var xOffset: Int = 0
}

extension ContainerValues {
    @Entry var pinPosition: PinPosition = .init()
}

// pinPosition.rotation = 0, pinPosition.xOffset = 3
Text("A").containerValue(\.pinPosition.xOffset, 3)

// pinPosition.rotation = 10, pinPosition.xOffset = 5
Text("B")
    .containerValue(\.pinPosition.rotation, 10)
    .containerValue(\.pinPosition.xOffset, 5)
```

This allows you to group multiple related container values into structs while maintaining separate modifiers to write each value.

```swift
extension View {
    func pinRotation(_ rotation: Double) -> some View {
        containerValue(\.pinPosition.rotation, rotation)
    }

    func pinXOffset(_ xOffset: Int) -> some View {
        containerValue(\.pinPosition.xOffset, xOffset)
    }
}
```

## Instance Methods

- [hasTag(_:)](/documentation/swiftui/containervalues/hastag(_:)) Returns true if the container values contain a tag matching a given value.
- [tag(for:)](/documentation/swiftui/containervalues/tag(for:)) The tag value for the given type if the container values contains one.

## Subscripts

- [subscript(_:)](/documentation/swiftui/containervalues/subscript(_:)) Accesses the particular container value associated with a custom key.

## Accessing a container’s subviews

- [Subview](/documentation/swiftui/subview)
- [SubviewsCollection](/documentation/swiftui/subviewscollection)
- [SubviewsCollectionSlice](/documentation/swiftui/subviewscollectionslice)
- [containerValue(_:_:)](/documentation/swiftui/view/containervalue(_:_:))
- [ContainerValueKey](/documentation/swiftui/containervaluekey)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
