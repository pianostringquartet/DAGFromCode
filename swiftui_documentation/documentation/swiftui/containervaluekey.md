---
title: ContainerValueKey
description: A key for accessing container values.
source: https://developer.apple.com/documentation/swiftui/containervaluekey
timestamp: 2025-10-29T00:14:00.456Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ContainerValueKey

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A key for accessing container values.

```swift
protocol ContainerValueKey
```

## Overview

You can create custom container values by extending the [Container Values](/documentation/swiftui/containervalues) structure with new properties. First declare a new container value key type and specify a value for the required [default Value](/documentation/swiftui/containervaluekey/defaultvalue) property:

```swift
private struct MyContainerValueKey: ContainerValueKey {
    static let defaultValue: String = "Default value"
}
```

The Swift compiler automatically infers the associated [Value](/documentation/swiftui/containervaluekey/value) type as the type you specify for the default value. Then use the key to define a new container value property:

```swift
extension ContainerValues {
    var myCustomValue: String {
        get { self[MyContainerValueKey.self] }
        set { self[MyContainerValueKey.self] = newValue }
    }
}
```

Clients of your container value never use the key directly. Instead, they use the key path of your custom container value property. To set the container value for a view, add the [containerValue(_:_:)](/documentation/swiftui/view/containervalue(_:_:)) view modifier to that view:

```swift
MyView()
    .containerValue(\.myCustomValue, "Another string")
```

As a convenience, you can also define a dedicated view modifier to apply this container value:

```swift
extension View {
    func myCustomValue(_ myCustomValue: String) -> some View {
        containerValue(\.myCustomValue, myCustomValue)
}
```

This improves clarity at the call site:

```swift
MyView()
    .myCustomValue("Another string")
```

To read the container value, use `Group(subviews:)` on a containing view, and then access the container value on members of that collection.

```swift
@ViewBuilder var content: some View {
    Text("A").myCustomValue("Hello")
    Text("B").myCustomValue("World")
}

Group(subviews: content) { subviews in
    ForEach(subviews) { subview in
        Text(subview.containerValues.myCustomValue)
    }
}
```

In practice, this will mostly be used by views that contain multiple other views to extract information from their subviews. You could turn the example above into such a container view as follows:

```swift
struct MyContainer<Content: View>: View {
    var content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        Group(subviews: content) { subviews in
            ForEach(subviews) { subview in
                // Display each view side-by-side with its custom value.
                HStack {
                    subview
                    Text(subview.containerValues.myCustomValue)
                }
            }
        }
    }
}
```

## Associated Types

- [Value](/documentation/swiftui/containervaluekey/value) The type of value produced by the container value.

## Type Properties

- [defaultValue](/documentation/swiftui/containervaluekey/defaultvalue) The default value of the container value.

## Accessing a container’s subviews

- [Subview](/documentation/swiftui/subview)
- [SubviewsCollection](/documentation/swiftui/subviewscollection)
- [SubviewsCollectionSlice](/documentation/swiftui/subviewscollectionslice)
- [containerValue(_:_:)](/documentation/swiftui/view/containervalue(_:_:))
- [ContainerValues](/documentation/swiftui/containervalues)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
