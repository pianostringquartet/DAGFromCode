---
title: accessibilityLabel(_:)
description: Adds a label to the view that describes its contents.
source: https://developer.apple.com/documentation/swiftui/text/accessibilitylabel(_:)
timestamp: 2025-10-29T00:10:15.133Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# accessibilityLabel(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Adds a label to the view that describes its contents.

```swift
nonisolated func accessibilityLabel(_ label: LocalizedStringResource) -> Text
```

## Parameters

**label**

The string resource for the alternative accessibility label.



## Discussion

Use this method to provide an alternative accessibility label to the text that is displayed. For example, you can give an alternate label to a navigation title:

```swift
var body: some View {
    NavigationView {
        ContentView()
            .navigationTitle(Text("􀈤").accessibilityLabel("Inbox"))
    }
}
```

## Providing accessibility information

- [accessibilityHeading(_:)](/documentation/swiftui/text/accessibilityheading(_:))
- [accessibilityTextContentType(_:)](/documentation/swiftui/text/accessibilitytextcontenttype(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
