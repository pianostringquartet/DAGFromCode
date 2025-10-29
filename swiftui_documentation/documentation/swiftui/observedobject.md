---
title: ObservedObject
description: A property wrapper type that subscribes to an observable object and invalidates a view whenever the observable object changes.
source: https://developer.apple.com/documentation/swiftui/observedobject
timestamp: 2025-10-29T00:13:58.374Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ObservedObject

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A property wrapper type that subscribes to an observable object and invalidates a view whenever the observable object changes.

```swift
@MainActor @propertyWrapper @preconcurrency @frozen struct ObservedObject<ObjectType> where ObjectType : ObservableObject
```

## Overview

Add the `@ObservedObject` attribute to a parameter of a SwiftUI [View](/documentation/swiftui/view) when the input is an [Observable Object](/documentation/Combine/ObservableObject) and you want the view to update when the object’s published properties change. You typically do this to pass a [State Object](/documentation/swiftui/stateobject) into a subview.

The following example defines a data model as an observable object, instantiates the model in a view as a state object, and then passes the instance to a subview as an observed object:

```swift
class DataModel: ObservableObject {
    @Published var name = "Some Name"
    @Published var isEnabled = false
}

struct MyView: View {
    @StateObject private var model = DataModel()

    var body: some View {
        Text(model.name)
        MySubView(model: model)
    }
}

struct MySubView: View {
    @ObservedObject var model: DataModel

    var body: some View {
        Toggle("Enabled", isOn: $model.isEnabled)
    }
}
```

When any published property of the observable object changes, SwiftUI updates any view that depends on the object. Subviews can also make updates to the model properties, like the [Toggle](/documentation/swiftui/toggle) in the above example, that propagate to other observers throughout the view hierarchy.

Don’t specify a default or initial value for the observed object. Use the attribute only for a property that acts as an input for a view, as in the above example.

> [!NOTE]
> Don’t wrap objects conforming to the [Observable](/documentation/Observation/Observable) protocol with `@ObservedObject`. SwiftUI automatically tracks dependencies to `Observable` objects used within body and updates dependent views when their data changes. Attempting to wrap an `Observable` object with `@ObservedObject` may cause a compiler error, because it requires that its wrapped object to conform to the [Observable Object](/documentation/Combine/ObservableObject) protocol.
> 
> If the view needs a binding to a property of an `Observable` object in its body, wrap the object with the [Bindable](/documentation/swiftui/bindable) property wrapper instead; for example, `@Bindable var model: DataModel`. For more information, see [Managing-model-data-in-your](/documentation/swiftui/managing-model-data-in-your-app).

## Conforms To

- [DynamicProperty](/documentation/swiftui/dynamicproperty)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating an observed object

- [init(wrappedValue:)](/documentation/swiftui/observedobject/init(wrappedvalue:)) Creates an observed object with an initial wrapped value.
- [init(initialValue:)](/documentation/swiftui/observedobject/init(initialvalue:)) Creates an observed object with an initial value.

## Getting the value

- [wrappedValue](/documentation/swiftui/observedobject/wrappedvalue) The underlying value that the observed object references.
- [projectedValue](/documentation/swiftui/observedobject/projectedvalue) A projection of the observed object that creates bindings to its properties.
- [ObservedObject.Wrapper](/documentation/swiftui/observedobject/wrapper) A wrapper of the underlying observable object that can create bindings to its properties.

## Creating model data

- [Managing model data in your app](/documentation/swiftui/managing-model-data-in-your-app)
- [Migrating from the Observable Object protocol to the Observable macro](/documentation/swiftui/migrating-from-the-observable-object-protocol-to-the-observable-macro)
- [Observable()](/documentation/Observation/Observable())
- [Monitoring data changes in your app](/documentation/swiftui/monitoring-model-data-changes-in-your-app)
- [StateObject](/documentation/swiftui/stateobject)
- [ObservableObject](/documentation/Combine/ObservableObject)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
