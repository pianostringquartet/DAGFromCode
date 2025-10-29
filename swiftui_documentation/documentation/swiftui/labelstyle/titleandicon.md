---
title: titleAndIcon
description: A label style that shows both the title and icon of the label using a system-standard layout.
source: https://developer.apple.com/documentation/swiftui/labelstyle/titleandicon
timestamp: 2025-10-29T00:11:40.817Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [labelstyle](/documentation/swiftui/labelstyle)

**Type Property**

# titleAndIcon

**Available on:** iOS 14.5+, iPadOS 14.5+, Mac Catalyst 14.5+, macOS 11.3+, tvOS 14.5+, visionOS 1.0+, watchOS 7.4+

> A label style that shows both the title and icon of the label using a system-standard layout.

```swift
@MainActor @preconcurrency static var titleAndIcon: TitleAndIconLabelStyle { get }
```

## Discussion

In most cases, labels show both their title and icon by default. However, some containers might apply a different default label style to their content, such as only showing icons within toolbars on macOS and iOS. To opt in to showing both the title and the icon, you can apply the title and icon label style:

```swift
Label("Lightning", systemImage: "bolt.fill")
    .labelStyle(.titleAndIcon)
```

To apply the title and icon style to a group of labels, apply the style to the view hierarchy that contains the labels:

```swift
VStack {
    Label("Rain", systemImage: "cloud.rain")
    Label("Snow", systemImage: "snow")
    Label("Sun", systemImage: "sun.max")
}
.labelStyle(.titleAndIcon)
```

The relative layout of the title and icon is dependent on the context it is displayed in. In most cases, however, the label is arranged horizontally with the icon leading.

## Getting built-in label styles

- [automatic](/documentation/swiftui/labelstyle/automatic)
- [iconOnly](/documentation/swiftui/labelstyle/icononly)
- [titleOnly](/documentation/swiftui/labelstyle/titleonly)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
