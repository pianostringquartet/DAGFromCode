---
title: appStoreOverlay(isPresented:configuration:)
description: Presents a StoreKit overlay when a given condition is true.
source: https://developer.apple.com/documentation/swiftui/view/appstoreoverlay(ispresented:configuration:)
timestamp: 2025-10-29T00:11:45.700Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# appStoreOverlay(isPresented:configuration:)

**Available on:** iOS 14.0+, iPadOS 14.0+, visionOS 1.0+

> Presents a StoreKit overlay when a given condition is true.

```swift
nonisolated func appStoreOverlay(isPresented: Binding<Bool>, configuration: @escaping () -> SKOverlay.Configuration) -> some View
```

## Parameters

**isPresented**

A Binding to a boolean value indicating whether the overlay should be presented.



**configuration**

A closure providing the configuration of the overlay.



## Discussion

You use `appStoreOverlay` to display an overlay that recommends another app. The overlay enables users to instantly view the other app’s page on the App Store.

When `isPresented` is true, the system will run `configuration` to determine how to configure the overlay. The overlay will automatically be presented over the current scene.

> [!NOTE]
> SKOverlay.Configuration.

## Interacting with the App Store and Apple Music

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
- [storeProductsTask(for:priority:action:)](/documentation/swiftui/view/storeproductstask(for:priority:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
