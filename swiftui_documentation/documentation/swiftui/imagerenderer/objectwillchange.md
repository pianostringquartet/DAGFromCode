---
title: objectWillChange
description: A publisher that informs subscribers of changes to the image.
source: https://developer.apple.com/documentation/swiftui/imagerenderer/objectwillchange
timestamp: 2025-10-29T00:12:23.839Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [imagerenderer](/documentation/swiftui/imagerenderer)

**Instance Property**

# objectWillChange

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A publisher that informs subscribers of changes to the image.

```swift
final let objectWillChange: PassthroughSubject<Void, Never>
```

## Discussion

The renderer’s [Object Will Change Publisher](/documentation/Combine/ObservableObject/ObjectWillChangePublisher) publishes `Void` elements. Subscribers should interpret any event as indicating that the contents of the image may have changed.

## Producing a stream of images

- [isObservationEnabled](/documentation/swiftui/imagerenderer/isobservationenabled)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
