---
title: onApplePayShippingContactChange(perform:)
description: Called when a user selected a shipping address. This is required if the user is being asked to provide a shipping contact.
source: https://developer.apple.com/documentation/swiftui/view/onapplepayshippingcontactchange(perform:)
timestamp: 2025-10-29T00:10:37.555Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onApplePayShippingContactChange(perform:)

**Available on:** iOS 15.5+, iPadOS 15.5+, macOS 12.5+, watchOS 8.5+

> Called when a user selected a shipping address. This is required if the user is being asked to provide a shipping contact.

```swift
nonisolated func onApplePayShippingContactChange(perform action: @escaping (PKContact) async -> PKPaymentRequestShippingContactUpdate) -> some View
```

## Return Value

An update to the payment request shipping methods.

## Accessing Apple Pay and Wallet

- [PayWithApplePayButton](/documentation/PassKit/PayWithApplePayButton)
- [AddPassToWalletButton](/documentation/PassKit/AddPassToWalletButton)
- [VerifyIdentityWithWalletButton](/documentation/PassKit/VerifyIdentityWithWalletButton)
- [addOrderToWalletButtonStyle(_:)](/documentation/swiftui/view/addordertowalletbuttonstyle(_:))
- [addPassToWalletButtonStyle(_:)](/documentation/swiftui/view/addpasstowalletbuttonstyle(_:))
- [onApplePayCouponCodeChange(perform:)](/documentation/swiftui/view/onapplepaycouponcodechange(perform:))
- [onApplePayPaymentMethodChange(perform:)](/documentation/swiftui/view/onapplepaypaymentmethodchange(perform:))
- [onApplePayShippingMethodChange(perform:)](/documentation/swiftui/view/onapplepayshippingmethodchange(perform:))
- [payLaterViewAction(_:)](/documentation/swiftui/view/paylaterviewaction(_:))
- [payLaterViewDisplayStyle(_:)](/documentation/swiftui/view/paylaterviewdisplaystyle(_:))
- [payWithApplePayButtonStyle(_:)](/documentation/swiftui/view/paywithapplepaybuttonstyle(_:))
- [verifyIdentityWithWalletButtonStyle(_:)](/documentation/swiftui/view/verifyidentitywithwalletbuttonstyle(_:))
- [AsyncShareablePassConfiguration](/documentation/PassKit/AsyncShareablePassConfiguration)
- [transactionTask(_:action:)](/documentation/swiftui/view/transactiontask(_:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
