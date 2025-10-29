---
title: init(wrappedValue:)
description: Creates an observed object with an initial wrapped value.
source: https://developer.apple.com/documentation/swiftui/observedobject/init(wrappedvalue:)
timestamp: 2025-10-29T00:10:46.504Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [observedobject](/documentation/swiftui/observedobject)

**Initializer**

# init(wrappedValue:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates an observed object with an initial wrapped value.

```swift
@MainActor @preconcurrency init(wrappedValue: ObjectType)
```

## Parameters

**wrappedValue**

An initial value for the observable object.



## Discussion

Don’t call this initializer directly. Instead, declare an input to a view with the `@ObservedObject` attribute, and pass a value to this input when you instantiate the view. Unlike a [State Object](/documentation/swiftui/stateobject) which manages data storage, you use an observed object to refer to storage that you manage elsewhere, as in the following example:

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

Explicitly calling the observed object initializer in `MySubView` would behave correctly, but would needlessly recreate the same observed object instance every time SwiftUI calls the view’s initializer to redraw the view.

## Creating an observed object

- [init(initialValue:)](/documentation/swiftui/observedobject/init(initialvalue:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
