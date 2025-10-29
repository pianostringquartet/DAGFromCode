---
title: onApplePayPaymentMethodChange(perform:)
description: Called when a payment method has changed and asks for an update payment request. If this modifier isn’t provided Wallet will assume the payment method is valid.
source: https://developer.apple.com/documentation/swiftui/view/onapplepaypaymentmethodchange(perform:)
timestamp: 2025-10-29T00:10:56.913Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onApplePayPaymentMethodChange(perform:)

**Available on:** iOS 15.5+, iPadOS 15.5+, macOS 12.5+, watchOS 8.5+

> Called when a payment method has changed and asks for an update payment request. If this modifier isn’t provided Wallet will assume the payment method is valid.

```swift
nonisolated func onApplePayPaymentMethodChange(perform action: @escaping (PKPaymentMethod) async -> PKPaymentRequestPaymentMethodUpdate) -> some View
```

## Return Value

An update to the payment request method.

## Accessing Apple Pay and Wallet

- [PayWithApplePayButton](/documentation/PassKit/PayWithApplePayButton)
- [AddPassToWalletButton](/documentation/PassKit/AddPassToWalletButton)
- [VerifyIdentityWithWalletButton](/documentation/PassKit/VerifyIdentityWithWalletButton)
- [addOrderToWalletButtonStyle(_:)](/documentation/swiftui/view/addordertowalletbuttonstyle(_:))
- [addPassToWalletButtonStyle(_:)](/documentation/swiftui/view/addpasstowalletbuttonstyle(_:))
- [onApplePayCouponCodeChange(perform:)](/documentation/swiftui/view/onapplepaycouponcodechange(perform:))
- [onApplePayShippingContactChange(perform:)](/documentation/swiftui/view/onapplepayshippingcontactchange(perform:))
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
