---
title: Link
description: A control for navigating to a URL.
source: https://developer.apple.com/documentation/swiftui/link
timestamp: 2025-10-29T00:14:35.162Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Link

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A control for navigating to a URL.

```swift
@MainActor @preconcurrency struct Link<Label> where Label : View
```

## Overview

Create a link by providing a destination URL and a title. The title tells the user the purpose of the link, and can be a string, a title key that produces a localized string, or a view that acts as a label. The example below creates a link to `example.com` and displays the title string as a link-styled view:

```swift
Link("View Our Terms of Service",
      destination: URL(string: "https://www.example.com/TOS.html")!)
```

When a user taps or clicks a `Link`, the default behavior depends on the contents of the URL. For example, SwiftUI opens a Universal Link in the associated app if possible, or in the user’s default web browser if not. Alternatively, you can override the default behavior by setting the [open URL](/documentation/swiftui/environmentvalues/openurl) environment value with a custom [Open URLAction](/documentation/swiftui/openurlaction):

```swift
Link("Visit Our Site", destination: URL(string: "https://www.example.com")!)
    .environment(\.openURL, OpenURLAction { url in
        print("Open \(url)")
        return .handled
    })
```

As with other views, you can style links using standard view modifiers depending on the view type of the link’s label. For example, a [Text](/documentation/swiftui/text) label could be modified with a custom [font(_:)](/documentation/swiftui/view/font(_:)) or [foregroundColor(_:)](/documentation/swiftui/view/foregroundcolor(_:)) to customize the appearance of the link in your app’s UI.

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a link

- [init(_:destination:)](/documentation/swiftui/link/init(_:destination:)) Creates a control, consisting of a URL and a title key, used to navigate to a URL.
- [init(destination:label:)](/documentation/swiftui/link/init(destination:label:)) Creates a control, consisting of a URL and a label, used to navigate to the given URL.

## Linking to other content

- [ShareLink](/documentation/swiftui/sharelink)
- [SharePreview](/documentation/swiftui/sharepreview)
- [TextFieldLink](/documentation/swiftui/textfieldlink)
- [HelpLink](/documentation/swiftui/helplink)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
