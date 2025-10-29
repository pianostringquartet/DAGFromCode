---
title: App organization
description: Define the entry point and top-level structure of your app.
source: https://developer.apple.com/documentation/swiftui/app-organization
timestamp: 2025-10-29T00:11:24.041Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# App organization

> Define the entry point and top-level structure of your app.

## Overview

Describe your app’s structure declaratively, much like you declare a view’s appearance. Create a type that conforms to the [App](/documentation/swiftui/app) protocol and use it to enumerate the [Scenes](/documentation/swiftui/scenes) that represent aspects of your app’s user interface.



SwiftUI enables you to write code that works across all of Apple’s platforms. However, it also enables you to tailor your app to the specific capabilities of each platform. For example, if you need to respond to the callbacks that the system traditionally makes on a UIKit, AppKit, or WatchKit app’s delegate, define a delegate object and instantiate it in your app structure using an appropriate delegate adaptor property wrapper, like [UIApplication Delegate Adaptor](/documentation/swiftui/uiapplicationdelegateadaptor).

For platform-specific design guidance, see [getting](/design/Human-Interface-Guidelines/getting-started) in the Human Interface Guidelines.

## Creating an app

- [Destination Video](/documentation/visionOS/destination-video) Leverage SwiftUI to build an immersive media experience in a multiplatform app.
- [Hello World](/documentation/visionOS/World) Use windows, volumes, and immersive spaces to teach people about the Earth.
- [Backyard Birds: Building an app with SwiftData and widgets](/documentation/swiftui/backyard-birds-sample) Create an app with persistent data, interactive widgets, and an all new in-app purchase experience.
- [Food Truck: Building a SwiftUI multiplatform app](/documentation/swiftui/food-truck-building-a-swiftui-multiplatform-app) Create a single codebase and app target for Mac, iPad, and iPhone.
- [Fruta: Building a feature-rich app with SwiftUI](/documentation/AppClip/fruta-building-a-feature-rich-app-with-swiftui) Create a shared codebase to build a multiplatform app that offers widgets and an App Clip.
- [Migrating to the SwiftUI life cycle](/documentation/swiftui/migrating-to-the-swiftui-life-cycle) Use a scene-based life cycle in SwiftUI while keeping your existing codebase.
- [App](/documentation/swiftui/app) A type that represents the structure and behavior of an app.

## Targeting iOS and iPadOS

- [UILaunchScreen](/documentation/BundleResources/Information-Property-List/UILaunchScreen) The user interface to show while an app launches.
- [UILaunchScreens](/documentation/BundleResources/Information-Property-List/UILaunchScreens) The user interfaces to show while an app launches in response to different URL schemes.
- [UIApplicationDelegateAdaptor](/documentation/swiftui/uiapplicationdelegateadaptor) A property wrapper type that you use to create a UIKit app delegate.

## Targeting macOS

- [NSApplicationDelegateAdaptor](/documentation/swiftui/nsapplicationdelegateadaptor) A property wrapper type that you use to create an AppKit app delegate.

## Targeting watchOS

- [WKApplicationDelegateAdaptor](/documentation/swiftui/wkapplicationdelegateadaptor) A property wrapper that is used in  to provide a delegate from WatchKit.
- [WKExtensionDelegateAdaptor](/documentation/swiftui/wkextensiondelegateadaptor) A property wrapper type that you use to create a WatchKit extension delegate.

## Targeting tvOS

- [Creating a tvOS media catalog app in SwiftUI](/documentation/swiftui/creating-a-tvos-media-catalog-app-in-swiftui) Build standard content lockups and rows of content shelves for your tvOS app.

## Handling system recenter events

- [WorldRecenterPhase](/documentation/swiftui/worldrecenterphase) A type that represents information associated with a phase of a system recenter event. Values of this type are passed to the closure specified in View.onWorldRecenter(action:).

## App structure

- [Scenes](/documentation/swiftui/scenes)
- [Windows](/documentation/swiftui/windows)
- [Immersive spaces](/documentation/swiftui/immersive-spaces)
- [Documents](/documentation/swiftui/documents)
- [Navigation](/documentation/swiftui/navigation)
- [Modal presentations](/documentation/swiftui/modal-presentations)
- [Toolbars](/documentation/swiftui/toolbars)
- [Search](/documentation/swiftui/search)
- [App extensions](/documentation/swiftui/app-extensions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
