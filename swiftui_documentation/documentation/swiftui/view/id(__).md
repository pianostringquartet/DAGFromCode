---
title: id(_:)
description: Binds a view’s identity to the given proxy value.
source: https://developer.apple.com/documentation/swiftui/view/id(_:)
timestamp: 2025-10-29T00:11:54.415Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# id(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Binds a view’s identity to the given proxy value.

```swift
nonisolated func id<ID>(_ id: ID) -> some View where ID : Hashable
```

## Discussion

When the proxy value specified by the `id` parameter changes, the identity of the view — for example, its state — is reset.

## Managing the view hierarchy

- [tag(_:includeOptional:)](/documentation/swiftui/view/tag(_:includeoptional:))
- [equatable()](/documentation/swiftui/view/equatable())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
