---
title: subscriptionPromotionalOffer(offer:signature:)
description: Selects a promotional offer to apply to a purchase a customer makes from a subscription store view.
source: https://developer.apple.com/documentation/swiftui/view/subscriptionpromotionaloffer(offer:signature:)
timestamp: 2025-10-29T00:14:11.727Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# subscriptionPromotionalOffer(offer:signature:)

**Available on:** iOS 17.4+, iPadOS 17.4+, macOS 14.4+, tvOS 17.4+, visionOS 1.1+, watchOS 10.4+

> Selects a promotional offer to apply to a purchase a customer makes from a subscription store view.

```swift
nonisolated func subscriptionPromotionalOffer(offer: @escaping (Product, Product.SubscriptionInfo) -> Product.SubscriptionOffer?, signature: @escaping (Product, Product.SubscriptionInfo, Product.SubscriptionOffer) async throws -> Product.SubscriptionOffer.Signature) -> some View
```

## Parameters

**offer**

The system calls this function before drawing the given subscription product on the subscription store view. Return the promotional offer to apply to the product, if any, to have system-provided UI reflect the discounted terms under the selected offer.



**signature**

The system calls this function before processing a purchase, with the product to be purchased provided as a parameter, along with the selected subscription offer to be applied to the purchase. Return a signature you generate on your server that validates the selected offer. Errors thrown from this closure will be surfaced via the [onInAppPurchaseCompletion(perform:)](/documentation/swiftui/view/oninapppurchasecompletion(perform:)) modifier. For information about generating the signature, see [generating-a-signature-for-promotional](/documentation/StoreKit/generating-a-signature-for-promotional-offers).



## Discussion

Subscription stores within this view uses the specified subscription offer to configure the appearance of the subscription plans displayed, when you use a system-provided [Subscription Store Control Style](/documentation/StoreKit/SubscriptionStoreControlStyle) to style the in-app subscription store. Standard [Product View Style](/documentation/StoreKit/ProductViewStyle) instances don’t show introductory or promotional offers in UI. Use the [Subscription Store View](/documentation/StoreKit/SubscriptionStoreView) instead to show these offers in the UI.

If the signature passes validation for the offer you select, the system applies the offer to the purchase. If the signature fails validation for the offer you select, the purchase fails with [invalid Offer Signature](/documentation/StoreKit/Product/PurchaseError/invalidOfferSignature).

Promotional offers you select in this modifier overwrite any offers you specified in ancestor views.

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
