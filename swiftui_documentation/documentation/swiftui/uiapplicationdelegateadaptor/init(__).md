---
title: init(_:)
description: Creates a UIKit app delegate adaptor using an observable delegate.
source: https://developer.apple.com/documentation/swiftui/uiapplicationdelegateadaptor/init(_:)
timestamp: 2025-10-29T00:14:45.243Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uiapplicationdelegateadaptor](/documentation/swiftui/uiapplicationdelegateadaptor)

**Initializer**

# init(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, tvOS 17.0+, visionOS 1.0+

> Creates a UIKit app delegate adaptor using an observable delegate.

```swift
@MainActor @preconcurrency init(_ delegateType: DelegateType.Type = DelegateType.self)
```

## Parameters

**delegateType**

The type of application delegate that you define in your app, which conforms to the [UIApplication Delegate](/documentation/UIKit/UIApplicationDelegate) and [Observable](/documentation/Observation/Observable) protocols.



## Discussion

Call this initializer indirectly by creating a property with the [UIApplication Delegate Adaptor](/documentation/swiftui/uiapplicationdelegateadaptor) property wrapper from inside your [App](/documentation/swiftui/app) declaration:

```swift
@main
struct MyApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: MyAppDelegate

    var body: some Scene { ... }
}
```

SwiftUI initializes the delegate and manages its lifetime, calling it as needed to handle application delegate callbacks.

SwiftUI invokes this method when your app delegate conforms to the [Observable](/documentation/Observation/Observable) protocol. In this case, SwiftUI automatically places the delegate in the [Environment](/documentation/swiftui/environment). You can access such a delegate from any scene or view in your app using the [Environment](/documentation/swiftui/environment) property wrapper:

```swift
@Environment(MyAppDelegate.self) private var appDelegate
```

If your delegate isn’t observable, SwiftUI invokes the [init(_:)](/documentation/swiftui/uiapplicationdelegateadaptor/init(_:)-59sfu) initializer rather than this one, and doesn’t put the delegate instance in the environment.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
