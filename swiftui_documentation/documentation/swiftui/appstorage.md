---
title: AppStorage
description: A property wrapper type that reflects a value from  and invalidates a view on a change in value in that user default.
source: https://developer.apple.com/documentation/swiftui/appstorage
timestamp: 2025-10-29T00:10:46.108Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AppStorage

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A property wrapper type that reflects a value from  and invalidates a view on a change in value in that user default.

```swift
@frozen @propertyWrapper struct AppStorage<Value>
```

## Conforms To

- [DynamicProperty](/documentation/swiftui/dynamicproperty)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Storing a value

- [init(wrappedValue:_:store:)](/documentation/swiftui/appstorage/init(wrappedvalue:_:store:)) Creates a property that can save and restore tab sidebar customizations.
- [init(_:store:)](/documentation/swiftui/appstorage/init(_:store:)) Creates a property that can read and write an Optional boolean user default.

## Getting the value

- [wrappedValue](/documentation/swiftui/appstorage/wrappedvalue)
- [projectedValue](/documentation/swiftui/appstorage/projectedvalue)

## Saving state across app launches

- [Restoring your app’s state with SwiftUI](/documentation/swiftui/restoring-your-app-s-state-with-swiftui)
- [defaultAppStorage(_:)](/documentation/swiftui/view/defaultappstorage(_:))
- [SceneStorage](/documentation/swiftui/scenestorage)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
