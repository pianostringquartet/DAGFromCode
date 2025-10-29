---
title: onReceive(_:perform:)
description: Adds an action to perform when this view detects data emitted by the given publisher.
source: https://developer.apple.com/documentation/swiftui/view/onreceive(_:perform:)
timestamp: 2025-10-29T00:12:42.478Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onReceive(_:perform:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds an action to perform when this view detects data emitted by the given publisher.

```swift
nonisolated func onReceive<P>(_ publisher: P, perform action: @escaping (P.Output) -> Void) -> some View where P : Publisher, P.Failure == Never
```

## Parameters

**publisher**

The publisher to subscribe to.



**action**

The action to perform when an event is emitted by `publisher`. The event emitted by publisher is passed as a parameter to `action`.



## Return Value

A view that triggers `action` when `publisher` emits an event.

## Responding to data changes

- [onChange(of:initial:_:)](/documentation/swiftui/view/onchange(of:initial:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
