---
title: FocusedObject
description: A property wrapper type for an observable object supplied by the focused view or one of its ancestors.
source: https://developer.apple.com/documentation/swiftui/focusedobject
timestamp: 2025-10-29T00:12:30.432Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# FocusedObject

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A property wrapper type for an observable object supplied by the focused view or one of its ancestors.

```swift
@MainActor @frozen @propertyWrapper @preconcurrency struct FocusedObject<ObjectType> where ObjectType : ObservableObject
```

## Overview

Focused objects invalidate the current view whenever the observable object changes. If multiple views publish a focused object using the same key, the wrapped property will reflect the object that’s closest to the focused view.

## Conforms To

- [DynamicProperty](/documentation/swiftui/dynamicproperty)

## Creating the focused object

- [init()](/documentation/swiftui/focusedobject/init()) Creates a focused object.

## Getting the value

- [projectedValue](/documentation/swiftui/focusedobject/projectedvalue) A projection of the focused object that creates bindings to its properties using dynamic member lookup.
- [wrappedValue](/documentation/swiftui/focusedobject/wrappedvalue) The underlying value referenced by the focused object.
- [FocusedObject.Wrapper](/documentation/swiftui/focusedobject/wrapper) A wrapper around the underlying focused object that can create bindings to its properties using dynamic member lookup.

## Exposing reference types to focused views

- [focusedObject(_:)](/documentation/swiftui/view/focusedobject(_:))
- [focusedSceneObject(_:)](/documentation/swiftui/view/focusedsceneobject(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
