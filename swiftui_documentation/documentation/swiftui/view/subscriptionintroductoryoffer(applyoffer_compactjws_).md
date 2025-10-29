---
title: subscriptionIntroductoryOffer(applyOffer:compactJWS:)
description: Selects the introductory offer eligibility preference to apply to a purchase a customer makes from a subscription store view.
source: https://developer.apple.com/documentation/swiftui/view/subscriptionintroductoryoffer(applyoffer:compactjws:)
timestamp: 2025-10-29T00:12:23.643Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# subscriptionIntroductoryOffer(applyOffer:compactJWS:)

**Available on:** iOS 26.0+, iPadOS 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Selects the introductory offer eligibility preference to apply to a purchase a customer makes from a subscription store view.

```swift
nonisolated func subscriptionIntroductoryOffer(applyOffer: @escaping (Product, Product.SubscriptionInfo) -> Bool, compactJWS: @escaping (Product, Product.SubscriptionInfo) async throws -> String) -> some View
```

## Parameters

**applyOffer**

The system calls this function before drawing the given subscription product on the subscription store view. Return if the introductory offer should be applied to a given product, if any, to have system-provided UI reflect the discounted terms under the selected offer.



**compactJWS**

The system calls this function before processing a purchase, with the product to be purchased provided as a parameter. Return a compact JWS signature you generate on your server that validates the selected offer eligibility preference. Errors thrown from this closure will be surfaced via the [onInAppPurchaseCompletion(perform:)](/documentation/swiftui/view/oninapppurchasecompletion(perform:)) modifier. For information about generating the JWS signature, see [generating-jws-to-sign-app-store](/documentation/StoreKit/generating-jws-to-sign-app-store-requests).



## Discussion

Subscription stores within this view uses the introductory subscription offers to configure the appearance of the subscription plans displayed, when you use a system-provided [Subscription Store Control Style](/documentation/StoreKit/SubscriptionStoreControlStyle) to style the in-app subscription store. Standard [Product View Style](/documentation/StoreKit/ProductViewStyle) instances don’t show introductory or promotional offers in UI, instead use [Subscription Store View](/documentation/StoreKit/SubscriptionStoreView).

Determine if the introductory offer should be displayed in the view and applied to the purchase using the `applyOffer`. If the signature passes validation, the system applies or removes the offer to the purchases according to the offer eligibility preference. If the signature fails validation, the purchase will fail with [invalid Offer Signature](/documentation/StoreKit/Product/PurchaseError/invalidOfferSignature).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
