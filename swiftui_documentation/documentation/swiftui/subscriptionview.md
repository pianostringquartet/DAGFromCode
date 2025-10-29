---
title: SubscriptionView
description: A view that subscribes to a publisher with an action.
source: https://developer.apple.com/documentation/swiftui/subscriptionview
timestamp: 2025-10-29T00:11:24.699Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SubscriptionView

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A view that subscribes to a publisher with an action.

```swift
@frozen struct SubscriptionView<PublisherType, Content> where PublisherType : Publisher, Content : View, PublisherType.Failure == Never
```

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a subscription view

- [init(content:publisher:action:)](/documentation/swiftui/subscriptionview/init(content:publisher:action:))

## Managing the subscription

- [publisher](/documentation/swiftui/subscriptionview/publisher) The  that is being subscribed.
- [action](/documentation/swiftui/subscriptionview/action) The  executed when  emits an event.
- [content](/documentation/swiftui/subscriptionview/content) The content view.

## Supporting view types

- [AnyView](/documentation/swiftui/anyview)
- [EmptyView](/documentation/swiftui/emptyview)
- [EquatableView](/documentation/swiftui/equatableview)
- [TupleView](/documentation/swiftui/tupleview)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
