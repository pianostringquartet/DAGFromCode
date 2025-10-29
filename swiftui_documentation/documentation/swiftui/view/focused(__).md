---
title: focused(_:)
description: Modifies this view by binding its focus state to the given Boolean state value.
source: https://developer.apple.com/documentation/swiftui/view/focused(_:)
timestamp: 2025-10-29T00:09:37.585Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# focused(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Modifies this view by binding its focus state to the given Boolean state value.

```swift
nonisolated func focused(_ condition: FocusState<Bool>.Binding) -> some View
```

## Parameters

**condition**

The focus state to bind. When focus moves to the view, the binding sets the bound value to `true`. If a caller sets the value to  `true` programmatically, then focus moves to the modified view. When focus leaves the modified view, the binding sets the value to `false`. If a caller sets the value to `false`, SwiftUI automatically dismisses focus.



## Return Value

The modified view.

## Discussion

Use this modifier to cause the view to receive focus whenever the `condition` value is `true`. You can use this modifier to observe the focus state of a single view, or programmatically set and remove focus from the view.

In the following example, a single [Text Field](/documentation/swiftui/textfield) accepts a user’s desired `username`. The text field binds its focus state to the Boolean value `usernameFieldIsFocused`. A “Submit” button’s action verifies whether the name is available. If the name is unavailable, the button sets `usernameFieldIsFocused` to `true`, which causes focus to return to the text field, so the user can enter a different name.

```swift
@State private var username: String = ""
@FocusState private var usernameFieldIsFocused: Bool
@State private var showUsernameTaken = false

var body: some View {
    VStack {
        TextField("Choose a username.", text: $username)
            .focused($usernameFieldIsFocused)
        if showUsernameTaken {
            Text("That username is taken. Please choose another.")
        }
        Button("Submit") {
            showUsernameTaken = false
            if !isUserNameAvailable(username: username) {
                usernameFieldIsFocused = true
                showUsernameTaken = true
            }
        }
    }
}
```

To control focus by matching a value, use the [focused(_:equals:)](/documentation/swiftui/view/focused(_:equals:)) method instead.

## Managing focus state

- [focused(_:equals:)](/documentation/swiftui/view/focused(_:equals:))
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
