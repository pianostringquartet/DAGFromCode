---
title: main()
description: Initializes and runs the widget.
source: https://developer.apple.com/documentation/swiftui/widget/main()
timestamp: 2025-10-29T00:14:59.872Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [widget](/documentation/swiftui/widget)

**Type Method**

# main()

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+, watchOS 9.0+

> Initializes and runs the widget.

```swift
@MainActor @preconcurrency static func main()
```

## Overview

Because you precede your [Widget](/documentation/swiftui/widget) conformer’s declaration with the [Attributes.html#ID626](https://docs.swift.org/swift-book/ReferenceManual/Attributes.html#ID626) attribute, the system calls your widget’s `main()` method to launch the widget. SwiftUI provides a default implementation of the method that manages the launch process in a platform-appropriate way.

## Running a widget

- [init()](/documentation/swiftui/widget/init())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
