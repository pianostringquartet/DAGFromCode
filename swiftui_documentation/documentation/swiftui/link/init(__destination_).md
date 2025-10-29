---
title: init(_:destination:)
description: Creates a control, consisting of a URL and a title key, used to navigate to a URL.
source: https://developer.apple.com/documentation/swiftui/link/init(_:destination:)
timestamp: 2025-10-29T00:11:06.408Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [link](/documentation/swiftui/link)

**Initializer**

# init(_:destination:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a control, consisting of a URL and a title key, used to navigate to a URL.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, destination: URL)
```

## Parameters

**titleKey**

The key for the localized title that describes the purpose of this link.



**destination**

The URL for the link.



## Discussion

Use [Link](/documentation/swiftui/link) to create a control that your app uses to navigate to a URL that you provide. The example below creates a link to `example.com` and uses `Visit Example Co` as the title key to generate a link-styled view in your app:

```swift
Link("Visit Example Co",
      destination: URL(string: "https://www.example.com/")!)
```

## Creating a link

- [init(destination:label:)](/documentation/swiftui/link/init(destination:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
