---
title: focused(_:equals:)
description: Modifies this view by binding its focus state to the given state value.
source: https://developer.apple.com/documentation/swiftui/view/focused(_:equals:)
timestamp: 2025-10-29T00:15:14.744Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# focused(_:equals:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Modifies this view by binding its focus state to the given state value.

```swift
nonisolated func focused<Value>(_ binding: FocusState<Value>.Binding, equals value: Value) -> some View where Value : Hashable
```

## Parameters

**binding**

The state binding to register. When focus moves to the modified view, the binding sets the bound value to the corresponding match value. If a caller sets the state value programmatically to the matching value, then focus moves to the modified view. When focus leaves the modified view, the binding sets the bound value to `nil`. If a caller sets the value to `nil`, SwiftUI automatically dismisses focus.



**value**

The value to match against when determining whether the binding should change.



## Return Value

The modified view.

## Discussion

Use this modifier to cause the view to receive focus whenever the `binding` equals the `value`. Typically, you create an enumeration of fields that may receive focus, bind an instance of this enumeration, and assign its cases to focusable views.

The following example uses the cases of a `LoginForm` enumeration to bind the focus state of two [Text Field](/documentation/swiftui/textfield) views. A sign-in button validates the fields and sets the bound `focusedField` value to any field that requires the user to correct a problem.

```swift
struct LoginForm {
    enum Field: Hashable {
        case usernameField
        case passwordField
    }

    @State private var username = ""
    @State private var password = ""
    @FocusState private var focusedField: Field?

    var body: some View {
        Form {
            TextField("Username", text: $username)
                .focused($focusedField, equals: .usernameField)

            SecureField("Password", text: $password)
                .focused($focusedField, equals: .passwordField)

            Button("Sign In") {
                if username.isEmpty {
                    focusedField = .usernameField
                } else if password.isEmpty {
                    focusedField = .passwordField
                } else {
                    handleLogin(username, password)
                }
            }
        }
    }
}
```

To control focus using a Boolean, use the [focused(_:)](/documentation/swiftui/view/focused(_:)) method instead.

## Managing focus state

- [focused(_:)](/documentation/swiftui/view/focused(_:))
- [isFocused](/documentation/swiftui/environmentvalues/isfocused)
- [FocusState](/documentation/swiftui/focusstate)
- [FocusedValue](/documentation/swiftui/focusedvalue)
- [Entry()](/documentation/swiftui/entry())
- [FocusedValueKey](/documentation/swiftui/focusedvaluekey)
- [FocusedBinding](/documentation/swiftui/focusedbinding)
- [searchFocused(_:)](/documentation/swiftui/view/searchfocused(_:))
- [searchFocused(_:equals:)](/documentation/swiftui/view/searchfocused(_:equals:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
