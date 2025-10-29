---
title: projectedValue
description: A projection of the observed object that provides bindings to its properties.
source: https://developer.apple.com/documentation/swiftui/wkextensiondelegateadaptor/projectedvalue
timestamp: 2025-10-29T00:13:02.847Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [wkextensiondelegateadaptor](/documentation/swiftui/wkextensiondelegateadaptor)

**Instance Property**

# projectedValue

**Available on:** watchOS 7.0+

> A projection of the observed object that provides bindings to its properties.

```swift
@MainActor @preconcurrency var projectedValue: ObservedObject<DelegateType>.Wrapper { get }
```

## Discussion

Use the projected value to get a binding to a value that the delegate publishes. Access the projected value by prefixing the name of the delegate instance with a dollar sign (`$`). For example, you might publish a Boolean value in your extension delegate:

```swift
class MyExtensionDelegate: NSObject, WKExtensionDelegate, ObservableObject {
    @Published var isEnabled = false

    // ...
}
```

If you declare the delegate in your [App](/documentation/swiftui/app) using the [WKExtension Delegate Adaptor](/documentation/swiftui/wkextensiondelegateadaptor) property wrapper, you can get the delegate that SwiftUI instantiates from the environment and access a binding to its published values from any view in your extension:

```swift
struct MyView: View {
    @EnvironmentObject private var extensionDelegate: MyExtensionDelegate

    var body: some View {
        Toggle("Enabled", isOn: $extensionDelegate.isEnabled)
    }
}
```

## Getting the delegate adaptor

- [wrappedValue](/documentation/swiftui/wkextensiondelegateadaptor/wrappedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
