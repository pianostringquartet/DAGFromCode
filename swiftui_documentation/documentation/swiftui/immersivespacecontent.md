---
title: ImmersiveSpaceContent
description: A type that you can use as the content of an immersive space.
source: https://developer.apple.com/documentation/swiftui/immersivespacecontent
timestamp: 2025-10-29T00:14:11.914Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ImmersiveSpaceContent

**Available on:** macOS 26.0+, visionOS 1.0+

> A type that you can use as the content of an immersive space.

```swift
@MainActor @preconcurrency protocol ImmersiveSpaceContent
```

## Overview

A type conforming to this protocol inherits `@preconcurrency @MainActor` isolation from the protocol if the conformance is included in the type’s base declaration:

```swift
struct MyCustomType: Transition {
    // `@preconcurrency @MainActor` isolation by default
}
```

Isolation to the main actor is the default, but it’s not required. Declare the conformance in an extension to opt out of main actor isolation:

```swift
extension MyCustomType: Transition {
    // `nonisolated` by default
}
```

## Conforming Types

- [CompositorContentBuilder.Content](/documentation/swiftui/compositorcontentbuilder/content)
- [ImmersiveSpaceViewContent](/documentation/swiftui/immersivespaceviewcontent)

## Creating immersive space content

- [body](/documentation/swiftui/immersivespacecontent/body-swift.property)
- [Body](/documentation/swiftui/immersivespacecontent/body-swift.associatedtype)

## Supporting types

- [ImmersiveSpaceViewContent](/documentation/swiftui/immersivespaceviewcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
