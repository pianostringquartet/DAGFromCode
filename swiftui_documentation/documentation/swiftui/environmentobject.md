---
title: EnvironmentObject
description: A property wrapper type for an observable object that a parent or ancestor view supplies.
source: https://developer.apple.com/documentation/swiftui/environmentobject
timestamp: 2025-10-29T00:09:24.426Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# EnvironmentObject

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A property wrapper type for an observable object that a parent or ancestor view supplies.

```swift
@MainActor @frozen @propertyWrapper @preconcurrency struct EnvironmentObject<ObjectType> where ObjectType : ObservableObject
```

## Overview

An environment object invalidates the current view whenever the observable object that conforms to [Observable Object](/documentation/Combine/ObservableObject) changes. If you declare a property as an environment object, be sure to set a corresponding model object on an ancestor view by calling its [environmentObject(_:)](/documentation/swiftui/view/environmentobject(_:)) modifier.

> [!NOTE]
> If your observable object conforms to the [Observable](/documentation/Observation/Observable) protocol, use [Environment](/documentation/swiftui/environment) instead of `EnvironmentObject` and set the model object in an ancestor view by calling its [environment(_:)](/documentation/swiftui/view/environment(_:)) or [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) modifiers.

## Conforms To

- [DynamicProperty](/documentation/swiftui/dynamicproperty)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating an environment object

- [init()](/documentation/swiftui/environmentobject/init()) Creates an environment object.

## Getting the value

- [wrappedValue](/documentation/swiftui/environmentobject/wrappedvalue) The underlying value referenced by the environment object.
- [projectedValue](/documentation/swiftui/environmentobject/projectedvalue) A projection of the environment object that creates bindings to its properties using dynamic member lookup.
- [EnvironmentObject.Wrapper](/documentation/swiftui/environmentobject/wrapper) A wrapper of the underlying environment object that can create bindings to its properties using dynamic member lookup.

## Distributing model data throughout your app

- [environmentObject(_:)](/documentation/swiftui/view/environmentobject(_:))
- [environmentObject(_:)](/documentation/swiftui/scene/environmentobject(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
