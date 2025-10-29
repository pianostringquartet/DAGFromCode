---
title: currentEntitlementTask(for:priority:action:)
description: Declares the view as dependent on the entitlement of an In-App Purchase product, and returns a modified view.
source: https://developer.apple.com/documentation/swiftui/view/currententitlementtask(for:priority:action:)
timestamp: 2025-10-29T00:12:30.140Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# currentEntitlementTask(for:priority:action:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Declares the view as dependent on the entitlement of an In-App Purchase product, and returns a modified view.

```swift
nonisolated func currentEntitlementTask(for productID: String, priority: TaskPriority = .medium, action: @escaping (EntitlementTaskState<VerificationResult<Transaction>?>) async -> ()) -> some View
```

## Parameters

**productID**

The product ID to get the entitlement for. The task restarts whenever this parameter changes.



**priority**

The task priority to use when creating the task.



**action**

The action to perform when the task’s state changes.



## Discussion

Before a view modified with this method appears, a task will start in the background to get the current entitlement. While the view is presented, the task will call `action` whenever the entitlement changes or the task’s state changes.

Consumable in-app purchases will always pass `nil` to `action`. For auto-renewable subscriptions, use `subscriptionStatusTask(for:priority:action:)` to get the full status information for the subscription.

## Interacting with the App Store and Apple Music

- [appStoreOverlay(isPresented:configuration:)](/documentation/swiftui/view/appstoreoverlay(ispresented:configuration:))
- [manageSubscriptionsSheet(isPresented:)](/documentation/swiftui/view/managesubscriptionssheet(ispresented:))
- [refundRequestSheet(for:isPresented:onDismiss:)](/documentation/swiftui/view/refundrequestsheet(for:ispresented:ondismiss:))
- [offerCodeRedemption(isPresented:onCompletion:)](/documentation/swiftui/view/offercoderedemption(ispresented:oncompletion:))
- [musicSubscriptionOffer(isPresented:options:onLoadCompletion:)](/documentation/swiftui/view/musicsubscriptionoffer(ispresented:options:onloadcompletion:))
- [inAppPurchaseOptions(_:)](/documentation/swiftui/view/inapppurchaseoptions(_:))
- [manageSubscriptionsSheet(isPresented:subscriptionGroupID:)](/documentation/swiftui/view/managesubscriptionssheet(ispresented:subscriptiongroupid:))
- [onInAppPurchaseCompletion(perform:)](/documentation/swiftui/view/oninapppurchasecompletion(perform:))
- [onInAppPurchaseStart(perform:)](/documentation/swiftui/view/oninapppurchasestart(perform:))
- [productIconBorder()](/documentation/swiftui/view/producticonborder())
- [productViewStyle(_:)](/documentation/swiftui/view/productviewstyle(_:))
- [productDescription(_:)](/documentation/swiftui/view/productdescription(_:))
- [storeButton(_:for:)](/documentation/swiftui/view/storebutton(_:for:))
- [storeProductTask(for:priority:action:)](/documentation/swiftui/view/storeproducttask(for:priority:action:))
- [storeProductsTask(for:priority:action:)](/documentation/swiftui/view/storeproductstask(for:priority:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
