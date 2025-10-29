---
title: privacySensitive(_:)
description: Marks the view as containing sensitive, private user data.
source: https://developer.apple.com/documentation/swiftui/view/privacysensitive(_:)
timestamp: 2025-10-29T00:14:52.621Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# privacySensitive(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Marks the view as containing sensitive, private user data.

```swift
nonisolated func privacySensitive(_ sensitive: Bool = true) -> some View
```

## Discussion

SwiftUI redacts views marked with this modifier when you apply the [privacy](/documentation/swiftui/redactionreasons/privacy) redaction reason.

```swift
struct BankAccountView: View {
    var body: some View {
        VStack {
            Text("Account #")

            Text(accountNumber)
                .font(.headline)
                .privacySensitive() // Hide only the account number.
        }
    }
}
```

## Redacting private content

- [Designing your app for the Always On state](/documentation/watchOS-Apps/designing-your-app-for-the-always-on-state)
- [redacted(reason:)](/documentation/swiftui/view/redacted(reason:))
- [unredacted()](/documentation/swiftui/view/unredacted())
- [redactionReasons](/documentation/swiftui/environmentvalues/redactionreasons)
- [isSceneCaptured](/documentation/swiftui/environmentvalues/isscenecaptured)
- [RedactionReasons](/documentation/swiftui/redactionreasons)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
