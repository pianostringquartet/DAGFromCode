---
title: main()
description: Initializes and runs the widget bundle.
source: https://developer.apple.com/documentation/swiftui/widgetbundle/main()
timestamp: 2025-10-29T00:14:54.498Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [widgetbundle](/documentation/swiftui/widgetbundle)

**Type Method**

# main()

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 26.0+, watchOS 9.0+

> Initializes and runs the widget bundle.

```swift
@MainActor @preconcurrency static func main()
```

## Overview

Because you precede your [Widget Bundle](/documentation/swiftui/widgetbundle) conformer’s declaration with the [Attributes.html#ID626](https://docs.swift.org/swift-book/ReferenceManual/Attributes.html#ID626) attribute, the system calls your widget bundle’s `main()` method to launch the widget bundle. SwiftUI provides a default implementation of the method that manages the launch process in a platform-appropriate way.

## Running a widget bundle

- [init()](/documentation/swiftui/widgetbundle/init())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
