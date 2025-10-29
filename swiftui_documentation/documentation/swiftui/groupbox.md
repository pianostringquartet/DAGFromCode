---
title: GroupBox
description: A stylized view, with an optional label, that visually collects a logical grouping of content.
source: https://developer.apple.com/documentation/swiftui/groupbox
timestamp: 2025-10-29T00:12:18.414Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# GroupBox

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 10.15+, visionOS 1.0+

> A stylized view, with an optional label, that visually collects a logical grouping of content.

```swift
struct GroupBox<Label, Content> where Label : View, Content : View
```

## Overview

Use a group box when you want to visually distinguish a portion of your user interface with an optional title for the boxed content.

The following example sets up a `GroupBox` with the label “End-User Agreement”, and a long `agreementText` string in a [Text](/documentation/swiftui/text) view wrapped by a [Scroll View](/documentation/swiftui/scrollview). The box also contains a [Toggle](/documentation/swiftui/toggle) for the user to interact with after reading the text.

```swift
var body: some View {
    GroupBox(label:
        Label("End-User Agreement", systemImage: "building.columns")
    ) {
        ScrollView(.vertical, showsIndicators: true) {
            Text(agreementText)
                .font(.footnote)
        }
        .frame(height: 100)
        Toggle(isOn: $userAgreed) {
            Text("I agree to the above terms")
        }
    }
}
```



## Conforms To

- [View](/documentation/swiftui/view)

## Creating a group box

- [init(content:)](/documentation/swiftui/groupbox/init(content:)) Creates an unlabeled group box with the provided view content.
- [init(content:label:)](/documentation/swiftui/groupbox/init(content:label:)) Creates a group box with the provided label and view content.
- [init(_:content:)](/documentation/swiftui/groupbox/init(_:content:)) Creates a group box with the provided view content and title.

## Creating a group box from a configuration

- [init(_:)](/documentation/swiftui/groupbox/init(_:)) Creates a group box based on a style configuration.

## Deprecated initializers

- [init(label:content:)](/documentation/swiftui/groupbox/init(label:content:))

## Grouping views into a box

- [groupBoxStyle(_:)](/documentation/swiftui/view/groupboxstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
