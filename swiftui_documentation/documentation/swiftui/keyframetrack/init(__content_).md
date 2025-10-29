---
title: init(_:content:)
description: Creates an instance that animates the property of the root value at the given key path.
source: https://developer.apple.com/documentation/swiftui/keyframetrack/init(_:content:)
timestamp: 2025-10-29T00:15:04.065Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [keyframetrack](/documentation/swiftui/keyframetrack)

**Initializer**

# init(_:content:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates an instance that animates the property of the root value at the given key path.

```swift
init(_ keyPath: WritableKeyPath<Root, Value>, @KeyframeTrackContentBuilder<Value> content: () -> Content)
```

## Parameters

**keyPath**

The property to animate.



## Creating a keyframe track

- [init(content:)](/documentation/swiftui/keyframetrack/init(content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
