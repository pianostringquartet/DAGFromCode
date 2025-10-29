---
title: preferredSubscriptionOffer(_:)
description: Selects a subscription offer to apply to a purchase that a customer makes from a subscription store view, a store view, or a product view.
source: https://developer.apple.com/documentation/swiftui/view/preferredsubscriptionoffer(_:)
timestamp: 2025-10-29T00:15:33.072Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# preferredSubscriptionOffer(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Selects a subscription offer to apply to a purchase that a customer makes from a subscription store view, a store view, or a product view.

```swift
nonisolated func preferredSubscriptionOffer(_ offer: @escaping (Product, Product.SubscriptionInfo, [Product.SubscriptionOffer]) -> Product.SubscriptionOffer?) -> some View
```

## Parameters

**offer**

A closure that returns the subscription offer to apply to the customer’s purchase.



## Discussion

Subscription stores within this view use the subscription offer you specify to configure the appearance of the subscription plans. [Product View](/documentation/StoreKit/ProductView) doesn’t display the terms of a subscription offer in the UI, but you can still use this modifier to declare which offer product views within a view hierarchy apply to a purchase.

Offer preferences that use this modifier override offer preferences from ancestor views.

> [!IMPORTANT]
> Subscription offers in the [Subscription Info](/documentation/StoreKit/Product/SubscriptionInfo) object may contain offers the customer isn’t eligible for. Instead, use the eligibleOffers argument of the offer closure to select the offers to apply to the customer’s purchase.

If StoreKit determines that the customer is eligible for more than one offer, the system calls the `offer` closure before it draws the product on the subscription store view, or before the customer initiates a purchase on a store view or product view. Return the subscription offer to apply to the product, if any, to have system-provided UI reflect the discounted pricing terms under the selected offer.

If your `offer` closure returns nil, the system selects the introductory offer, if it exists, and if the customer is eligible for it.

The following code example sets the preferred subscription offer to the first offer the customer is eligible for:

```swift
import SwiftUI
import StoreKit

@available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
struct MyView: View {

    var body: some View {
        SubscriptionStoreView(groupID: groupIdentifier)
            .preferredSubscriptionOffer { product, subscription, eligibleOffers in
                // Determine the offer to use from the list of eligibleOffers.
                // This example just uses the first offer.
                return eligibleOffers.first
            }
    }
}
```

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
