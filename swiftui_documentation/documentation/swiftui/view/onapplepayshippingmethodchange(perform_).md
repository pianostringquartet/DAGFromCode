---
title: onApplePayShippingMethodChange(perform:)
description: Called when a user selected a shipping method. This is required if the user is being asked to provide a shipping method.
source: https://developer.apple.com/documentation/swiftui/view/onapplepayshippingmethodchange(perform:)
timestamp: 2025-10-29T00:10:48.214Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onApplePayShippingMethodChange(perform:)

**Available on:** iOS 15.5+, iPadOS 15.5+, macOS 12.5+, watchOS 8.5+

> Called when a user selected a shipping method. This is required if the user is being asked to provide a shipping method.

```swift
nonisolated func onApplePayShippingMethodChange(perform action: @escaping (PKShippingMethod) async -> PKPaymentRequestShippingMethodUpdate) -> some View
```

## Return Value

An update to the payment request shipping method.

## Accessing Apple Pay and Wallet

- [PayWithApplePayButton](/documentation/PassKit/PayWithApplePayButton)
- [AddPassToWalletButton](/documentation/PassKit/AddPassToWalletButton)
- [VerifyIdentityWithWalletButton](/documentation/PassKit/VerifyIdentityWithWalletButton)
- [addOrderToWalletButtonStyle(_:)](/documentation/swiftui/view/addordertowalletbuttonstyle(_:))
- [addPassToWalletButtonStyle(_:)](/documentation/swiftui/view/addpasstowalletbuttonstyle(_:))
- [onApplePayCouponCodeChange(perform:)](/documentation/swiftui/view/onapplepaycouponcodechange(perform:))
- [onApplePayPaymentMethodChange(perform:)](/documentation/swiftui/view/onapplepaypaymentmethodchange(perform:))
- [onApplePayShippingContactChange(perform:)](/documentation/swiftui/view/onapplepayshippingcontactchange(perform:))
- [payLaterViewAction(_:)](/documentation/swiftui/view/paylaterviewaction(_:))
- [payLaterViewDisplayStyle(_:)](/documentation/swiftui/view/paylaterviewdisplaystyle(_:))
- [payWithApplePayButtonStyle(_:)](/documentation/swiftui/view/paywithapplepaybuttonstyle(_:))
- [verifyIdentityWithWalletButtonStyle(_:)](/documentation/swiftui/view/verifyidentitywithwalletbuttonstyle(_:))
- [AsyncShareablePassConfiguration](/documentation/PassKit/AsyncShareablePassConfiguration)
- [transactionTask(_:action:)](/documentation/swiftui/view/transactiontask(_:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
