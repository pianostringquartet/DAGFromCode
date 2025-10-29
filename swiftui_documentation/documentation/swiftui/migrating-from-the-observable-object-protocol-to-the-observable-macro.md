---
title: Migrating from the Observable Object protocol to the Observable macro
description: Update your existing app to leverage the benefits of Observation in Swift.
source: https://developer.apple.com/documentation/swiftui/migrating-from-the-observable-object-protocol-to-the-observable-macro
timestamp: 2025-10-29T00:09:57.730Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Sample Code**

# Migrating from the Observable Object protocol to the Observable macro

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, Xcode 15.0+

> Update your existing app to leverage the benefits of Observation in Swift.

## Overview

Starting with iOS 17, iPadOS 17, macOS 14, tvOS 17, and watchOS 10, SwiftUI provides support for [Observation](/documentation/Observation), a Swift-specific implementation of the observer design pattern. Adopting Observation provides your app with the following benefits:

- Tracking optionals and collections of objects, which isn’t possible when using [Observable Object](/documentation/Combine/ObservableObject).
- Using existing data flow primitives like [State](/documentation/swiftui/state) and [Environment](/documentation/swiftui/environment) instead of object-based equivalents such as [State Object](/documentation/swiftui/stateobject) and [Environment Object](/documentation/swiftui/environmentobject).
- Updating views based on changes to the observable properties that a view’s [body](/documentation/swiftui/view/body-8kl5o) reads instead of any property changes that occur to an observable object, which can help improve your app’s performance.

To take advantage of these benefits in your app, you’ll discover how to replace existing source code that relies on [Observable Object](/documentation/Combine/ObservableObject) with code that leverages the [Observable()](/documentation/Observation/Observable()) macro.

> [!NOTE]
> Download this sample to see the migrated version of the sample app. To see the premigrated version, download the sample available in [Monitoring-model-data-changes-in-your](/documentation/swiftui/monitoring-model-data-changes-in-your-app). You can also use the premigrated version to code along with this article.

### Use the Observable macro

To adopt [Observation](/documentation/Observation) in an existing app, begin by replacing [Observable Object](/documentation/Combine/ObservableObject) in your data model type with the [Observable()](/documentation/Observation/Observable()) macro. The [Observable()](/documentation/Observation/Observable()) macro generates source code at compile time that adds observation support to the type.

Then remove the [Published](/documentation/Combine/Published) property wrapper from observable properties. Observation doesn’t require a property wrapper to make a property observable. Instead, the accessibility of the property in relationship to an observer, such as a view, determines whether a property is observable.

If you have properties that are accessible to an observer that you don’t want to track, apply the [ObservationIgnored()](/documentation/Observation/ObservationIgnored()) macro to the property.

### Migrate incrementally

You don’t need to make a wholesale replacement of the [Observable Object](/documentation/Combine/ObservableObject) protocol throughout your app. Instead, you can make changes incrementally. Start by changing one data model type to use the [Observable()](/documentation/Observation/Observable()) macro. Your app can mix data model types that use different observation systems. However, SwiftUI tracks changes differently based on the observation system that a data model type uses, `Observable` versus `ObservableObject`.

You may notice slight behavioral differences in your app based on the tracking method. For instance, when tracking as [Observable()](/documentation/Observation/Observable()), SwiftUI updates a view only when an observable property changes and the view’s [body](/documentation/swiftui/view/body-8kl5o) reads the property directly. The view doesn’t update when observable properties not read by `body` changes. In contrast, a view updates when any published property of an [Observable Object](/documentation/Combine/ObservableObject) instance changes, even if the view doesn’t read the property that changes, when tracking as `ObservableObject`.

> [!NOTE]
> To learn more about when SwiftUI updates views when observable properties change, see [Managing-model-data-in-your](/documentation/swiftui/managing-model-data-in-your-app).

### Migrate other source code

The only change made to the sample app so far is to apply the [Observable()](/documentation/Observation/Observable()) macro to `Library` and remove support for the [Observable Object](/documentation/Combine/ObservableObject) protocol. The app still uses the [Observable Object](/documentation/Combine/ObservableObject) data flow primitive like [State Object](/documentation/swiftui/stateobject) to manage an instance of `Library`. If you were to build and run the app, SwiftUI still updates the views as expected. That’s because data flow property wrappers such as [State Object](/documentation/swiftui/stateobject) and [Environment Object](/documentation/swiftui/environmentobject) support types that use the [Observable()](/documentation/Observation/Observable()) macro. SwiftUI provides this support so apps can make source code changes incrementally.

However, to fully adopt [Observation](/documentation/Observation), replace the use of [State Object](/documentation/swiftui/stateobject) with [State](/documentation/swiftui/state) after updating your data model type. For example, in the following code the main app structure creates an instance of `Library` and stores it as a `StateObject`. It also adds the `Library` instance to the environment using the [environmentObject(_:)](/documentation/swiftui/view/environmentobject(_:)) modifier.

```swift
// BEFORE
@main
struct BookReaderApp: App {
    @StateObject private var library = Library()

    var body: some Scene {
        WindowGroup {
            LibraryView()
                .environmentObject(library)
        }
    }
}
```

Now that `Library` no longer conforms to [Observable Object](/documentation/Combine/ObservableObject), the code can change to use [State](/documentation/swiftui/state) instead of [State Object](/documentation/swiftui/stateobject) and to add `library` to the environment using the [environment(_:)](/documentation/swiftui/view/environment(_:)) modifier.

```swift
// AFTER
@main
struct BookReaderApp: App {
    @State private var library = Library()

    var body: some Scene {
        WindowGroup {
            LibraryView()
                .environment(library)
        }
    }
}
```

One more change must happen before `Library` fully adopts [Observation](/documentation/Observation). Previously the view `LibraryView` retrieved a `Library` instance from the environment using the [Environment Object](/documentation/swiftui/environmentobject) property wrapper. The new code, however, uses the [Environment](/documentation/swiftui/environment) property wrapper instead.

### Remove the ObservedObject property wrapper

To wrap up the migration of the sample app, change the data model type `Book` to support [Observation](/documentation/Observation) by removing [Observable Object](/documentation/Combine/ObservableObject) from the type declaration and apply the [Observable()](/documentation/Observation/Observable()) macro. Then remove the [Published](/documentation/Combine/Published) property wrapper from observable properties.

Next, remove the [Observed Object](/documentation/swiftui/observedobject) property wrapper from the `book` variable in the `BookView`. This property wrapper isn’t needed when adopting [Observation](/documentation/Observation). That’s because SwiftUI automatically tracks any observable properties that a view’s [body](/documentation/swiftui/view/body-8kl5o) reads directly. For example, SwiftUI updates `BookView` when `book.title` changes.

However, if a view needs a binding to an observable type, replace [Observed Object](/documentation/swiftui/observedobject) with the [Bindable](/documentation/swiftui/bindable) property wrapper. This property wrapper provides binding support to an observable type so that views that expect a binding can change an observable property. For instance, in the following code [Text Field](/documentation/swiftui/textfield) receives a binding to `book.title`:

## Creating model data

- [Managing model data in your app](/documentation/swiftui/managing-model-data-in-your-app)
- [Observable()](/documentation/Observation/Observable())
- [Monitoring data changes in your app](/documentation/swiftui/monitoring-model-data-changes-in-your-app)
- [StateObject](/documentation/swiftui/stateobject)
- [ObservedObject](/documentation/swiftui/observedobject)
- [ObservableObject](/documentation/Combine/ObservableObject)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
