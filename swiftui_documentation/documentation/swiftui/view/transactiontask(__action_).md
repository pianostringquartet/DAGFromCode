---
title: transactionTask(_:action:)
description: Provides a task to perform before this view appears
source: https://developer.apple.com/documentation/swiftui/view/transactiontask(_:action:)
timestamp: 2025-10-29T00:09:32.831Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# transactionTask(_:action:)

**Available on:** iOS 18.1+, iPadOS 18.1+

> Provides a task to perform before this view appears

```swift
nonisolated func transactionTask(_ configuration: CredentialTransaction.Configuration?, action: @escaping (CredentialTransaction) async -> Void) -> some View
```

## Parameters

**configuration**

A configuration containing information about the transaction task. When the task is completed or an error is encountered while performing the task, the system invalidates this configuration, and the `CredentialTransaction` is invalidated.



**action**

A closure that will be called when `isPerformingTransaction` is `true`. It provides a `CredentialTransaction` instance that can be used to perform transactions.



## Discussion

This task provides an instance of a `CredentialTransaction` to be used to perform transactions.

A typical client should use the APIs in the following sequence:

1. `acquirePresentmentIntentAssertion()` prior to showing any proprietary payment UI
2. `relinquish()` the assertion before invoking the transaction API
3. `configuration.invalidate()` after presenting the credential
4. Optionally, `acquirePresentmentIntentAssertion()` to finish up any proprietary payment UI
5. `relinquish()` the assertion

For example:

```swift
 struct TransactionView: View {
     @State private var configuration: CredentialTransaction.Configuration?
     private var assertion: PresentmentIntentAssertion // acquirePresentmentIntentAssertion() before transitioning into this view (step 1)
     private var activeSession: CredentialSession
     private var selectedCredential: Credential

     var body: some View {
         VStack {
             Button("Perform Transaction") {
                 guard let configuration else {
                    configuration = activeSession.configuration()
                    return
                 }

                 configuration.invalidate() // step 3
                 // Optional
                 assertion = try await session.acquirePresentmentIntentAssertion() // step 4
                 // handle any proprietary UI
                 try await assertion.relinquish() // step 5
                 // Optional end
             }
             .transactionTask(configuration) { transaction in
                 do {
                     try await assertion.relinquish() // step 2
                     try await transaction.performTransaction(using: selectedCredential)
                 } catch {
                     // code to handle error
                 }
             }
         }
     }
 }
```

## Accessing Apple Pay and Wallet

- [PayWithApplePayButton](/documentation/PassKit/PayWithApplePayButton)
- [AddPassToWalletButton](/documentation/PassKit/AddPassToWalletButton)
- [VerifyIdentityWithWalletButton](/documentation/PassKit/VerifyIdentityWithWalletButton)
- [addOrderToWalletButtonStyle(_:)](/documentation/swiftui/view/addordertowalletbuttonstyle(_:))
- [addPassToWalletButtonStyle(_:)](/documentation/swiftui/view/addpasstowalletbuttonstyle(_:))
- [onApplePayCouponCodeChange(perform:)](/documentation/swiftui/view/onapplepaycouponcodechange(perform:))
- [onApplePayPaymentMethodChange(perform:)](/documentation/swiftui/view/onapplepaypaymentmethodchange(perform:))
- [onApplePayShippingContactChange(perform:)](/documentation/swiftui/view/onapplepayshippingcontactchange(perform:))
- [onApplePayShippingMethodChange(perform:)](/documentation/swiftui/view/onapplepayshippingmethodchange(perform:))
- [payLaterViewAction(_:)](/documentation/swiftui/view/paylaterviewaction(_:))
- [payLaterViewDisplayStyle(_:)](/documentation/swiftui/view/paylaterviewdisplaystyle(_:))
- [payWithApplePayButtonStyle(_:)](/documentation/swiftui/view/paywithapplepaybuttonstyle(_:))
- [verifyIdentityWithWalletButtonStyle(_:)](/documentation/swiftui/view/verifyidentitywithwalletbuttonstyle(_:))
- [AsyncShareablePassConfiguration](/documentation/PassKit/AsyncShareablePassConfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
