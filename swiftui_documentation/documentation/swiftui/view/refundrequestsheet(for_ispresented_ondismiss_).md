---
title: refundRequestSheet(for:isPresented:onDismiss:)
description: Display the refund request sheet for the given transaction.
source: https://developer.apple.com/documentation/swiftui/view/refundrequestsheet(for:ispresented:ondismiss:)
timestamp: 2025-10-29T00:09:13.735Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# refundRequestSheet(for:isPresented:onDismiss:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 14.0+, visionOS 1.0+

> Display the refund request sheet for the given transaction.

```swift
@preconcurrency nonisolated func refundRequestSheet(for transactionID: Transaction.ID, isPresented: Binding<Bool>, onDismiss: (@MainActor (Result<Transaction.RefundRequestStatus, Transaction.RefundRequestError>) -> ())? = nil) -> some View
```

## Parameters

**transactionID**

The transaction ID to request a refund for.



**isPresented**

A binding to a Boolean value that determines whether the refund request sheet is presented.



**onDismiss**

The closure to execute when dismissing the sheet, with the result of the refund request provided as a parameter.



## Interacting with the App Store and Apple Music

- [appStoreOverlay(isPresented:configuration:)](/documentation/swiftui/view/appstoreoverlay(ispresented:configuration:))
- [manageSubscriptionsSheet(isPresented:)](/documentation/swiftui/view/managesubscriptionssheet(ispresented:))
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
- [storeProductsTask(for:priority:action:)](/documentation/swiftui/view/storeproductstask(for:priority:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
