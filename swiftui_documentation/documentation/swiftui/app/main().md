---
title: main()
description: Initializes and runs the app.
source: https://developer.apple.com/documentation/swiftui/app/main()
timestamp: 2025-10-29T00:09:55.503Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [app](/documentation/swiftui/app)

**Type Method**

# main()

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Initializes and runs the app.

```swift
@MainActor @preconcurrency static func main()
```

## Discussion

If you precede your [App](/documentation/swiftui/app) conformer’s declaration with the [Attributes.html#ID626](https://docs.swift.org/swift-book/ReferenceManual/Attributes.html#ID626) attribute, the system calls the conformer’s `main()` method to launch the app. SwiftUI provides a default implementation of the method that manages the launch process in a platform-appropriate way.

## Running an app

- [init()](/documentation/swiftui/app/init())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
