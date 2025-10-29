---
title: subscriptionPromotionalOffer(offer:compactJWS:)
description: Selects a promotional offer to apply to a purchase a customer makes from a subscription store view.
source: https://developer.apple.com/documentation/swiftui/view/subscriptionpromotionaloffer(offer:compactjws:)
timestamp: 2025-10-29T00:10:38.353Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# subscriptionPromotionalOffer(offer:compactJWS:)

**Available on:** iOS 26.0+, iPadOS 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Selects a promotional offer to apply to a purchase a customer makes from a subscription store view.

```swift
nonisolated func subscriptionPromotionalOffer(offer: @escaping (Product, Product.SubscriptionInfo) -> Product.SubscriptionOffer?, compactJWS: @escaping (Product, Product.SubscriptionInfo, Product.SubscriptionOffer) async throws -> String) -> some View
```

## Parameters

**offer**

The system calls this function before drawing the given subscription product on the subscription store view. Return the promotional offer to apply to the product, if any, to have system-provided UI reflect the discounted terms under the selected offer.



**compactJWS**

The system calls this function before processing a purchase, with the product to be purchased provided as a parameter, along with the selected subscription offer to be applied to the purchase. Return a compact JWS signature you generate on your server that validates the selected offer. Errors thrown from this closure will be surfaced via the [onInAppPurchaseCompletion(perform:)](/documentation/swiftui/view/oninapppurchasecompletion(perform:)) modifier. For information about generating the JWS signature, see [generating-jws-to-sign-app-store](/documentation/StoreKit/generating-jws-to-sign-app-store-requests)..



## Discussion

Subscription stores within this view uses the specified subscription offer to configure the appearance of the subscription plans displayed, when you use a system-provided [Subscription Store Control Style](/documentation/StoreKit/SubscriptionStoreControlStyle) to style the in-app subscription store. Standard [Product View Style](/documentation/StoreKit/ProductViewStyle) instances don’t show introductory or promotional offers in UI. Use the [Subscription Store View](/documentation/StoreKit/SubscriptionStoreView) instead to show these offers in the UI.

If the signature passes validation for the offer you select, the system applies the offer to the purchase. If the signature fails validation for the offer you select, the purchase fails with [invalid Offer Signature](/documentation/StoreKit/Product/PurchaseError/invalidOfferSignature).

Promotional offers you select in this modifier overwrite any offers you specified in ancestor views.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
