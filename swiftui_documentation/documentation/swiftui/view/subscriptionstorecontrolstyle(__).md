---
title: subscriptionStoreControlStyle(_:)
description: Sets the control style for subscription store views within a view.
source: https://developer.apple.com/documentation/swiftui/view/subscriptionstorecontrolstyle(_:)
timestamp: 2025-10-29T00:10:32.548Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# subscriptionStoreControlStyle(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Sets the control style for subscription store views within a view.

```swift
nonisolated func subscriptionStoreControlStyle(_ style: some SubscriptionStoreControlStyle) -> some View
```

## Discussion

This view modifier set the style of controls for [Subscription Store View](/documentation/StoreKit/SubscriptionStoreView) instances within a view.

## Interacting with the App Store and Apple Music

- [appStoreOverlay(isPresented:configuration:)](/documentation/swiftui/view/appstoreoverlay(ispresented:configuration:))
- [manageSubscriptionsSheet(isPresented:)](/documentation/swiftui/view/managesubscriptionssheet(ispresented:))
- [refundRequestSheet(for:isPresented:onDismiss:)](/documentation/swiftui/view/refundrequestsheet(for:ispresented:ondismiss:))
- [offerCodeRedemption(isPresented:onCompletion:)](/documentation/swiftui/view/offercoderedemption(ispresented:oncompletion:))
- [musicSubscriptionOffer(isPresented:options:onLoadCompletion:)](/documentation/swiftui/view/musicsubscriptionoffer(ispresented:options:onloadcompletion:))
- [currentEntitlementTask(for:priority:action:)](/documentation/swiftui/view/currententitlementtask(for:priority:action:))
- [inAppPurchaseOptions(_:)](/documentation/swiftui/view/inapppurchaseoptions(_:))
- [manageSubscriptionsSheet(isPresented:subscriptionGroupID:)](/documentation/swiftui/view/managesubscriptionssheet(ispresented:subscriptiongroupid:))
- [onInAppPurchaseCompletion(perform:)](/documentation/swiftui/view/oninapppurchasecompletion(perform:))
- [onInAppPurchaseStart(perform:)](/documentation/swiftui/view/oninapppurchasestart(perform:))
- [productIconBorder()](/documentation/swiftui/view/producticonborder())
- [productViewStyle(_:)](/documentation/swiftui/view/productviewstyle(_:))
- [productDescription(_:)](/documentation/swiftui/view/productdescription(_:))
- [storeButton(_:for:)](/documentation/swiftui/view/storebutton(_:for:))
- [storeProductTask(for:priority:action:)](/documentation/swiftui/view/storeproducttask(for:priority:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
