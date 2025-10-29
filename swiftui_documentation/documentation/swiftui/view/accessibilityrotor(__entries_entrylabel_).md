---
title: accessibilityRotor(_:entries:entryLabel:)
description: Create an Accessibility Rotor with the specified user-visible label and entries.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityrotor(_:entries:entrylabel:)
timestamp: 2025-10-29T00:12:16.277Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityRotor(_:entries:entryLabel:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Create an Accessibility Rotor with the specified user-visible label and entries.

```swift
nonisolated func accessibilityRotor<EntryModel>(_ rotorLabel: Text, entries: [EntryModel], entryLabel: KeyPath<EntryModel, String>) -> some View where EntryModel : Identifiable
```

## Parameters

**rotorLabel**

Localized label identifying this Rotor to the user.



**entries**

An array of identifiable values that will be used to generate the entries of the Rotor. The identifiers of the `Identifiable` values must match up with identifiers in a `ForEach` or explicit `id` calls within the `ScrollView`. When the user navigates to entries from this Rotor, SwiftUI will automatically scroll them into place as needed.



**entryLabel**

Key path on the `Identifiable` type that can be used to get a user-visible label for every Rotor entry. This is used on macOS when the user opens the list of entries for the Rotor.



## Discussion

An Accessibility Rotor is a shortcut for Accessibility users to quickly navigate to specific elements of the user interface, and optionally specific ranges of text within those elements.

Using this modifier requires that the Rotor be attached to a `ScrollView`, or an Accessibility Element directly within a `ScrollView`, such as a `ForEach`.

In the following example, a Message application creates a Rotor allowing users to navigate to specifically the messages originating from VIPs.

```swift
// `messages` is a list of `Identifiable` `Message`s that have a
// `subject`.
// `vipMessages` is a filtered version of that list containing only
// messages from VIPs.

ScrollView {
    LazyVStack {
        ForEach(messages) { message in
            MessageView(message)
        }
    }
}
.accessibilityElement(children: .contain)
.accessibilityRotor("VIPs", entries: vipMessages, label: \.subject)
```

## Working with rotors

- [accessibilityRotor(_:entries:)](/documentation/swiftui/view/accessibilityrotor(_:entries:))
- [accessibilityRotor(_:entries:entryID:entryLabel:)](/documentation/swiftui/view/accessibilityrotor(_:entries:entryid:entrylabel:))
- [accessibilityRotor(_:textRanges:)](/documentation/swiftui/view/accessibilityrotor(_:textranges:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
