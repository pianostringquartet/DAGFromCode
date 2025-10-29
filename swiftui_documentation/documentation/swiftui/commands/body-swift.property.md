---
title: body
description: The contents of the command hierarchy.
source: https://developer.apple.com/documentation/swiftui/commands/body-swift.property
timestamp: 2025-10-29T00:11:48.356Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [commands](/documentation/swiftui/commands)

**Instance Property**

# body

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> The contents of the command hierarchy.

```swift
@CommandsBuilder @MainActor @preconcurrency var body: Self.Body { get }
```

## Discussion

For any commands that you create, provide a computed `body` property that defines the scene as a composition of other scenes. You can assemble a command hierarchy from built-in commands that SwiftUI provides, as well as other commands that you’ve defined.

## Implementing commands

- [Body](/documentation/swiftui/commands/body-swift.associatedtype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
