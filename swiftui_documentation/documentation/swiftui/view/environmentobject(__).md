---
title: environmentObject(_:)
description: Supplies an observable object to a view’s hierarchy.
source: https://developer.apple.com/documentation/swiftui/view/environmentobject(_:)
timestamp: 2025-10-29T00:13:16.556Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# environmentObject(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Supplies an observable object to a view’s hierarchy.

```swift
nonisolated func environmentObject<T>(_ object: T) -> some View where T : ObservableObject
```

## Parameters

**object**

The object to store and make available to the view’s hierarchy.



## Discussion

Use this modifier to add an observable object to a view’s environment. The object must conform to the [Observable Object](/documentation/Combine/ObservableObject) protocol.

Adding an object to a view’s environment makes the object available to subviews in the view’s hierarchy. To retrieve the object in a subview, use the [Environment Object](/documentation/swiftui/environmentobject) property wrapper.

> [!NOTE]
> If the observable object conforms to the [Observable](/documentation/Observation/Observable) protocol, use either [environment(_:)](/documentation/swiftui/view/environment(_:)) or the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) modifier to add the object to the view’s environment.

## Distributing model data throughout your app

- [environmentObject(_:)](/documentation/swiftui/scene/environmentobject(_:))
- [EnvironmentObject](/documentation/swiftui/environmentobject)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
