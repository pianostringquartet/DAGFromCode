---
title: contactAccessPicker(isPresented:completionHandler:)
description: Modally present UI which allows the user to select which contacts your app has access to.
source: https://developer.apple.com/documentation/swiftui/view/contactaccesspicker(ispresented:completionhandler:)
timestamp: 2025-10-29T00:15:29.102Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# contactAccessPicker(isPresented:completionHandler:)

**Available on:** iOS 18.0+, iPadOS 18.0+

> Modally present UI which allows the user to select which contacts your app has access to.

```swift
@MainActor @preconcurrency func contactAccessPicker(isPresented: Binding<Bool>, completionHandler: @escaping ([String]) -> () = {_ in }) -> some View
```

## Discussion

This API should only be used when your app has “Limited” authorization.  See `CNAuthorizationStatus` and `CNContactStore/authorizationStatus(for:)`.  The completion handler will be invoked with an empty result if your app doesn’t have the correct authorization status.

Your completion handler will receive an array of contact identifiers that were newly granted to your app.  Contacts which your app lost access to are not listed.  The newly-available contacts can be accessed using `CNContactStore`.

Parameters:

- isPresented: The binding to whether the contact picker should be shown.
- completionHandler: A function to invoke when the management UI is dismissed.  Receives an array containing contact identifiers of newly-available contacts.

## Managing contact access

- [contactAccessButtonCaption(_:)](/documentation/swiftui/view/contactaccessbuttoncaption(_:))
- [contactAccessButtonStyle(_:)](/documentation/swiftui/view/contactaccessbuttonstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
