---
title: documentConfiguration
description: The configuration of a document in a .
source: https://developer.apple.com/documentation/swiftui/environmentvalues/documentconfiguration
timestamp: 2025-10-29T00:11:03.576Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# documentConfiguration

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> The configuration of a document in a .

```swift
var documentConfiguration: DocumentConfiguration? { get }
```

## Discussion

The value is `nil` for views that are not enclosed in a [Document Group](/documentation/swiftui/documentgroup).

For example, if the app shows the document path in the footer of each document, it can get the URL from the environment:

```swift
struct ContentView: View {
    @Binding var document: TextDocument
    @Environment(\.documentConfiguration) private var configuration: DocumentConfiguration?

    var body: some View {
        …
        Label(
            configuration?.fileURL?.path ??
                "", systemImage: "folder.circle"
        )
    }
}
```

## Accessing document configuration

- [DocumentConfiguration](/documentation/swiftui/documentconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
