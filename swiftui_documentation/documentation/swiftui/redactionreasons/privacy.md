---
title: privacy
description: Displayed data should be obscured to protect private information.
source: https://developer.apple.com/documentation/swiftui/redactionreasons/privacy
timestamp: 2025-10-29T00:09:16.097Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [redactionreasons](/documentation/swiftui/redactionreasons)

**Type Property**

# privacy

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Displayed data should be obscured to protect private information.

```swift
static let privacy: RedactionReasons
```

## Discussion

Views marked with `privacySensitive` will be automatically redacted using a standard styling. To apply a custom treatment the redaction reason can be read out of the environment.

```swift
struct BankingContentView: View {
    @Environment(\.redactionReasons) var redactionReasons

    var body: some View {
        if redactionReasons.contains(.privacy) {
            FullAppCover()
        } else {
            AppContent()
        }
    }
}
```

## Getting redaction reasons

- [invalidated](/documentation/swiftui/redactionreasons/invalidated)
- [placeholder](/documentation/swiftui/redactionreasons/placeholder)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
