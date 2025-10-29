---
title: accessibilityRotor(_:textRanges:)
description: Create an Accessibility Rotor with the specified user-visible label and entries for each of the specified ranges. The Rotor will be attached to the current Accessibility element, and each entry will go the specified range of that element.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityrotor(_:textranges:)
timestamp: 2025-10-29T00:14:32.116Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityRotor(_:textRanges:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Create an Accessibility Rotor with the specified user-visible label and entries for each of the specified ranges. The Rotor will be attached to the current Accessibility element, and each entry will go the specified range of that element.

```swift
nonisolated func accessibilityRotor(_ label: LocalizedStringResource, textRanges: [Range<String.Index>]) -> some View
```

## Parameters

**label**

Localized label identifying this Rotor to the user.



**textRanges**

An array of ranges that will be used to generate the entries of the Rotor.



## Discussion

An Accessibility Rotor is a shortcut for Accessibility users to quickly navigate to specific elements of the user interface, and optionally specific ranges of text within those elements.

In the following example, a Message application adds a Rotor allowing the user to navigate through all the ranges of text containing email addresses.

```swift
extension Message {
    // Ranges of special areas in the `content` text. Calculated
    // when `content` is set and then cached so that we don't have
    // to re-compute them.
    var emailAddressRanges: [Range<String.Index>]
}

struct MessageContentView: View {
    TextEditor(.constant(message.content))
        .accessibilityRotor("Email Addresses",
            textRanges: message.emailAddressRanges)
}
```

## Working with rotors

- [accessibilityRotor(_:entries:)](/documentation/swiftui/view/accessibilityrotor(_:entries:))
- [accessibilityRotor(_:entries:entryID:entryLabel:)](/documentation/swiftui/view/accessibilityrotor(_:entries:entryid:entrylabel:))
- [accessibilityRotor(_:entries:entryLabel:)](/documentation/swiftui/view/accessibilityrotor(_:entries:entrylabel:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
