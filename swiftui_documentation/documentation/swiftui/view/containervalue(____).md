---
title: containerValue(_:_:)
description: Sets a particular container value of a view.
source: https://developer.apple.com/documentation/swiftui/view/containervalue(_:_:)
timestamp: 2025-10-29T00:14:28.638Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# containerValue(_:_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Sets a particular container value of a view.

```swift
nonisolated func containerValue<V>(_ keyPath: WritableKeyPath<ContainerValues, V>, _ value: V) -> some View
```

## Parameters

**keyPath**

A key path that indicates the property of the [Container Values](/documentation/swiftui/containervalues) structure to update.



**value**

The new value to set for the item specified by `keyPath`.



## Return Value

A view that has the given value set in its containerValues.

## Discussion

Use this modifier to set one of the writable properties of the [Container Values](/documentation/swiftui/containervalues) structure, including custom values that you create.

Like preferences, container values are able to be read by views above the view they’re set on. Unlike preferences, however, container values don’t have merging behavior because they don’t escape their closest container. In the following example, the container value is set on the contained view, but is dropped when it reaches the containing [VStack](/documentation/swiftui/vstack).

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

The container values modifier can also be used to modify mutable subfields of container values.

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

## Accessing a container’s subviews

- [Subview](/documentation/swiftui/subview)
- [SubviewsCollection](/documentation/swiftui/subviewscollection)
- [SubviewsCollectionSlice](/documentation/swiftui/subviewscollectionslice)
- [ContainerValues](/documentation/swiftui/containervalues)
- [ContainerValueKey](/documentation/swiftui/containervaluekey)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
