---
title: WKExtensionDelegateAdaptor
description: A property wrapper type that you use to create a WatchKit extension delegate.
source: https://developer.apple.com/documentation/swiftui/wkextensiondelegateadaptor
timestamp: 2025-10-29T00:11:31.405Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# WKExtensionDelegateAdaptor

**Available on:** watchOS 7.0+

> A property wrapper type that you use to create a WatchKit extension delegate.

```swift
@MainActor @preconcurrency @propertyWrapper struct WKExtensionDelegateAdaptor<DelegateType> where DelegateType : NSObject, DelegateType : WKExtensionDelegate
```

## Overview

To handle extension delegate callbacks in an extension that uses the SwiftUI life cycle, define a type that conforms to the [WKExtension Delegate](/documentation/WatchKit/WKExtensionDelegate) protocol, and implement the delegate methods that you need. For example, you can implement the [didRegisterForRemoteNotifications(withDeviceToken:)](/documentation/WatchKit/WKExtensionDelegate/didRegisterForRemoteNotifications(withDeviceToken:)) method to handle remote notification registration:

```swift
class MyExtensionDelegate: NSObject, WKExtensionDelegate, ObservableObject {
    func didRegisterForRemoteNotifications(withDeviceToken: Data) {
        // Record the device token.
    }
}
```

Then use the `WKExtensionDelegateAdaptor` property wrapper inside your [App](/documentation/swiftui/app) declaration to tell SwiftUI about the delegate type:

```swift
@main
struct MyApp: App {
    @WKExtensionDelegateAdaptor private var extensionDelegate: MyExtensionDelegate

    var body: some Scene { ... }
}
```

SwiftUI instantiates the delegate and calls the delegate’s methods in response to life cycle events. Define the delegate adaptor only in your [App](/documentation/swiftui/app) declaration, and only once for a given extension. If you declare it more than once, SwiftUI generates a runtime error.

If your extension delegate conforms to the [Observable Object](/documentation/Combine/ObservableObject) protocol, as in the example above, then SwiftUI puts the delegate it creates into the [Environment](/documentation/swiftui/environment). You can access the delegate from any scene or view in your extension using the [Environment Object](/documentation/swiftui/environmentobject) property wrapper:

```swift
@EnvironmentObject private var extensionDelegate: MyExtensionDelegate
```

This enables you to use the dollar sign (`$`) prefix to get a binding to published properties that you declare in the delegate. For more information, see [projected Value](/documentation/swiftui/wkextensiondelegateadaptor/projectedvalue).

> [!IMPORTANT]
> Manage an externsion’s life cycle events without using a delegate whenever possible. For example, prefer to handle changes in [Scene Phase](/documentation/swiftui/scenephase) instead of relying on delegate callbacks, like [applicationDidFinishLaunching()](/documentation/WatchKit/WKExtensionDelegate/applicationDidFinishLaunching()).

## Conforms To

- [DynamicProperty](/documentation/swiftui/dynamicproperty)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a delegate adaptor

- [init(_:)](/documentation/swiftui/wkextensiondelegateadaptor/init(_:)) Creates a WatchKit extension delegate adaptor using an observable delegate.

## Getting the delegate adaptor

- [projectedValue](/documentation/swiftui/wkextensiondelegateadaptor/projectedvalue) A projection of the observed object that provides bindings to its properties.
- [wrappedValue](/documentation/swiftui/wkextensiondelegateadaptor/wrappedvalue) The underlying delegate.

## Targeting watchOS

- [WKApplicationDelegateAdaptor](/documentation/swiftui/wkapplicationdelegateadaptor)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
