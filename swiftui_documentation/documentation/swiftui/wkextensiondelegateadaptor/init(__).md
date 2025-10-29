---
title: init(_:)
description: Creates a WatchKit extension delegate adaptor using an observable delegate.
source: https://developer.apple.com/documentation/swiftui/wkextensiondelegateadaptor/init(_:)
timestamp: 2025-10-29T00:09:34.284Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [wkextensiondelegateadaptor](/documentation/swiftui/wkextensiondelegateadaptor)

**Initializer**

# init(_:)

**Available on:** watchOS 10.0+

> Creates a WatchKit extension delegate adaptor using an observable delegate.

```swift
@MainActor @preconcurrency init(_ delegateType: DelegateType.Type = DelegateType.self)
```

## Parameters

**delegateType**

The type of extension delegate that you define in your app, which conforms to the [WKExtension Delegate](/documentation/WatchKit/WKExtensionDelegate) and [Observable](/documentation/Observation/Observable) protocols.



## Discussion

Call this initializer indirectly by creating a property with the [WKExtension Delegate Adaptor](/documentation/swiftui/wkextensiondelegateadaptor) property wrapper from inside your [App](/documentation/swiftui/app) declaration:

```swift
@main
struct MyApp: App {
    @WKExtensionDelegateAdaptor private var extensionDelegate: MyExtensionDelegate

    var body: some Scene { ... }
}
```

SwiftUI initializes the delegate and manages its lifetime, calling it as needed to handle extension delegate callbacks.

SwiftUI invokes this method when your app delegate conforms to the [Observable](/documentation/Observation/Observable) protocol. In this case, SwiftUI automatically places the delegate in the [Environment](/documentation/swiftui/environment). You can access such a delegate from any scene or view in your app using the [Environment](/documentation/swiftui/environment) property wrapper:

```swift
@Environment(MyAppDelegate.self) private var appDelegate
```

If your delegate isn’t observable, SwiftUI invokes the [init(_:)](/documentation/swiftui/wkextensiondelegateadaptor/init(_:)-2556) initializer rather than this one, and doesn’t put the delegate instance in the environment.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
