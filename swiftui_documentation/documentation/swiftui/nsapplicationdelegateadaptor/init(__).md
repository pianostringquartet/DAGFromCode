---
title: init(_:)
description: Creates an AppKit app delegate adaptor using an observable delegate.
source: https://developer.apple.com/documentation/swiftui/nsapplicationdelegateadaptor/init(_:)
timestamp: 2025-10-29T00:10:42.420Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsapplicationdelegateadaptor](/documentation/swiftui/nsapplicationdelegateadaptor)

**Initializer**

# init(_:)

**Available on:** macOS 14.0+

> Creates an AppKit app delegate adaptor using an observable delegate.

```swift
@MainActor @preconcurrency init(_ delegateType: DelegateType.Type = DelegateType.self)
```

## Parameters

**delegateType**

The type of application delegate that you define in your app, which conforms to the [NSApplication Delegate](/documentation/AppKit/NSApplicationDelegate) and [Observable](/documentation/Observation/Observable) protocols.



## Discussion

Call this initializer indirectly by creating a property with the [NSApplication Delegate Adaptor](/documentation/swiftui/nsapplicationdelegateadaptor) property wrapper from inside your [App](/documentation/swiftui/app) declaration:

```swift
@main
struct MyApp: App {
    @NSApplicationDelegateAdaptor private var appDelegate: MyAppDelegate

    var body: some Scene { ... }
}
```

SwiftUI initializes the delegate and manages its lifetime, calling it as needed to handle application delegate callbacks.

SwiftUI invokes this method when your app delegate conforms to the [Observable](/documentation/Observation/Observable) protocol. In this case, SwiftUI automatically places the delegate in the [Environment](/documentation/swiftui/environment). You can access such a delegate from any scene or view in your app using the [Environment](/documentation/swiftui/environment) property wrapper:

```swift
@Environment(MyAppDelegate.self) private var appDelegate
```

If your delegate isn’t observable, SwiftUI invokes the [init(_:)](/documentation/swiftui/nsapplicationdelegateadaptor/init(_:)-67u91) initializer rather than this one, and doesn’t put the delegate instance in the environment.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
