---
title: NSApplicationDelegateAdaptor
description: A property wrapper type that you use to create an AppKit app delegate.
source: https://developer.apple.com/documentation/swiftui/nsapplicationdelegateadaptor
timestamp: 2025-10-29T00:13:02.240Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# NSApplicationDelegateAdaptor

**Available on:** macOS 11.0+

> A property wrapper type that you use to create an AppKit app delegate.

```swift
@MainActor @preconcurrency @propertyWrapper struct NSApplicationDelegateAdaptor<DelegateType> where DelegateType : NSObject, DelegateType : NSApplicationDelegate
```

## Overview

To handle app delegate callbacks in an app that uses the SwiftUI life cycle, define a type that conforms to the [NSApplication Delegate](/documentation/AppKit/NSApplicationDelegate) protocol, and implement the delegate methods that you need. For example, you can implement the [application(_:didRegisterForRemoteNotificationsWithDeviceToken:)](/documentation/AppKit/NSApplicationDelegate/application(_:didRegisterForRemoteNotificationsWithDeviceToken:)) method to handle remote notification registration:

```swift
class MyAppDelegate: NSObject, NSApplicationDelegate, ObservableObject {
    func application(
        _ application: NSApplication,
        didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
    ) {
        // Record the device token.
    }
}
```

Then use the `NSApplicationDelegateAdaptor` property wrapper inside your [App](/documentation/swiftui/app) declaration to tell SwiftUI about the delegate type:

```swift
@main
struct MyApp: App {
    @NSApplicationDelegateAdaptor private var appDelegate: MyAppDelegate

    var body: some Scene { ... }
}
```

SwiftUI instantiates the delegate and calls the delegate’s methods in response to life cycle events. Define the delegate adaptor only in your [App](/documentation/swiftui/app) declaration, and only once for a given app. If you declare it more than once, SwiftUI generates a runtime error.

If your app delegate conforms to the [Observable Object](/documentation/Combine/ObservableObject) protocol, as in the example above, then SwiftUI puts the delegate it creates into the [Environment](/documentation/swiftui/environment). You can access the delegate from any scene or view in your app using the [Environment Object](/documentation/swiftui/environmentobject) property wrapper:

```swift
@EnvironmentObject private var appDelegate: MyAppDelegate
```

This enables you to use the dollar sign (`$`) prefix to get a binding to published properties that you declare in the delegate. For more information, see [projected Value](/documentation/swiftui/nsapplicationdelegateadaptor/projectedvalue).

> [!IMPORTANT]
> Manage an app’s life cycle events without using an app delegate whenever possible. For example, prefer to handle changes in [Scene Phase](/documentation/swiftui/scenephase) instead of relying on delegate callbacks, like [applicationDidFinishLaunching(_:)](/documentation/AppKit/NSApplicationDelegate/applicationDidFinishLaunching(_:)).

## Conforms To

- [DynamicProperty](/documentation/swiftui/dynamicproperty)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a delegate adaptor

- [init(_:)](/documentation/swiftui/nsapplicationdelegateadaptor/init(_:)) Creates an AppKit app delegate adaptor using an observable delegate.

## Getting the delegate adaptor

- [projectedValue](/documentation/swiftui/nsapplicationdelegateadaptor/projectedvalue) A projection of the observed object that provides bindings to its properties.
- [wrappedValue](/documentation/swiftui/nsapplicationdelegateadaptor/wrappedvalue) The underlying delegate.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
