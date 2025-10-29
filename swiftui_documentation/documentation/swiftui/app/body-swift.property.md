---
title: body
description: The content and behavior of the app.
source: https://developer.apple.com/documentation/swiftui/app/body-swift.property
timestamp: 2025-10-29T00:09:46.921Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [app](/documentation/swiftui/app)

**Instance Property**

# body

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The content and behavior of the app.

```swift
@SceneBuilder @MainActor @preconcurrency var body: Self.Body { get }
```

## Discussion

For any app that you create, provide a computed `body` property that defines your app’s scenes, which are instances that conform to the [Scene](/documentation/swiftui/scene) protocol. For example, you can create a simple app with a single scene containing a single view:

```swift
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            Text("Hello, world!")
        }
    }
}
```

Swift infers the app’s [Body-swift.associatedtype](/documentation/swiftui/app/body-swift.associatedtype) associated type based on the scene provided by the `body` property.

## Implementing an app

- [Body](/documentation/swiftui/app/body-swift.associatedtype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
