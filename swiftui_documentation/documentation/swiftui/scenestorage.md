---
title: SceneStorage
description: A property wrapper type that reads and writes to persisted, per-scene storage.
source: https://developer.apple.com/documentation/swiftui/scenestorage
timestamp: 2025-10-29T00:15:01.028Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SceneStorage

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A property wrapper type that reads and writes to persisted, per-scene storage.

```swift
@frozen @propertyWrapper struct SceneStorage<Value>
```

## Overview

You use `SceneStorage` when you need automatic state restoration of the value.  `SceneStorage` works very similar to `State`, except its initial value is restored by the system if it was previously saved, and the value is shared with other `SceneStorage` variables in the same scene.

The system manages the saving and restoring of `SceneStorage` on your behalf. The underlying data that backs `SceneStorage` is not available to you, so you must access it via the `SceneStorage` property wrapper. The system makes no guarantees as to when and how often the data will be persisted.

Each `Scene` has its own notion of `SceneStorage`, so data is not shared between scenes.

Ensure that the data you use with `SceneStorage` is lightweight. Data of a large size, such as model data, should not be stored in `SceneStorage`, as poor performance may result.

If the `Scene` is explicitly destroyed (e.g. the switcher snapshot is destroyed on iPadOS or the window is closed on macOS), the data is also destroyed. Do not use `SceneStorage` with sensitive data.

## Conforms To

- [DynamicProperty](/documentation/swiftui/dynamicproperty)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Storing a value

- [init(wrappedValue:_:)](/documentation/swiftui/scenestorage/init(wrappedvalue:_:)) Creates a property that can save and restore an integer, transforming it to a  data type.
- [init(_:)](/documentation/swiftui/scenestorage/init(_:)) Creates a property that can save and restore an Optional boolean.

## Getting the value

- [wrappedValue](/documentation/swiftui/scenestorage/wrappedvalue) The underlying value referenced by the state variable.
- [projectedValue](/documentation/swiftui/scenestorage/projectedvalue) A binding to the state value.

## Initializers

- [init(wrappedValue:_:store:)](/documentation/swiftui/scenestorage/init(wrappedvalue:_:store:)) Creates a property that can save and restore tab sidebar customizations.

## Saving state across app launches

- [Restoring your app’s state with SwiftUI](/documentation/swiftui/restoring-your-app-s-state-with-swiftui)
- [defaultAppStorage(_:)](/documentation/swiftui/view/defaultappstorage(_:))
- [AppStorage](/documentation/swiftui/appstorage)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
