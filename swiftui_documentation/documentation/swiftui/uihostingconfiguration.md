---
title: UIHostingConfiguration
description: A content configuration suitable for hosting a hierarchy of SwiftUI views.
source: https://developer.apple.com/documentation/swiftui/uihostingconfiguration
timestamp: 2025-10-29T00:13:09.490Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# UIHostingConfiguration

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, tvOS 16.0+, visionOS 1.0+

> A content configuration suitable for hosting a hierarchy of SwiftUI views.

```swift
struct UIHostingConfiguration<Content, Background> where Content : View, Background : View
```

## Overview

Use a value of this type, which conforms to the [UIContent Configuration](/documentation/UIKit/UIContentConfiguration-9eib5) protocol, with a [UICollection View Cell](/documentation/UIKit/UICollectionViewCell) or [UITable View Cell](/documentation/UIKit/UITableViewCell) to host a hierarchy of SwiftUI views in a collection or table view, respectively. For example, the following shows a stack with an image and text inside the cell:

```swift
myCell.contentConfiguration = UIHostingConfiguration {
    HStack {
        Image(systemName: "star").foregroundStyle(.purple)
        Text("Favorites")
        Spacer()
    }
}
```

You can also customize the background of the containing cell. The following example draws a blue background:

```swift
myCell.contentConfiguration = UIHostingConfiguration {
    HStack {
        Image(systemName: "star").foregroundStyle(.purple)
        Text("Favorites")
        Spacer()
    }
}
.background {
    Color.blue
}
```

When used in a list layout, certain APIs are bridged automatically, like swipe actions and separator alignment. The following example shows a trailing yellow star swipe action:

```swift
cell.contentConfiguration = UIHostingConfiguration {
    HStack {
        Image(systemName: "airplane")
        Text("Flight 123")
        Spacer()
    }
    .swipeActions {
        Button { ... } label: {
            Label("Favorite", systemImage: "star")
        }
        .tint(.yellow)
    }
}
```

## Conforms To

- [UIContentConfiguration](/documentation/UIKit/UIContentConfiguration-9eib5)

## Creating and updating a configuration

- [init(content:)](/documentation/swiftui/uihostingconfiguration/init(content:)) Creates a hosting configuration with the given contents.

## Setting the background

- [background(_:)](/documentation/swiftui/uihostingconfiguration/background(_:)) Sets the background contents for the hosting configuration’s enclosing cell.
- [background(content:)](/documentation/swiftui/uihostingconfiguration/background(content:)) Sets the background contents for the hosting configuration’s enclosing cell.

## Setting margins

- [margins(_:_:)](/documentation/swiftui/uihostingconfiguration/margins(_:_:)) Sets the margins around the content of the configuration.

## Setting a size

- [minSize(width:height:)](/documentation/swiftui/uihostingconfiguration/minsize(width:height:)) Sets the minimum size for the configuration.
- [minSize()](/documentation/swiftui/uihostingconfiguration/minsize()) Sets the minimum size for the configuration.

## Displaying SwiftUI views in UIKit

- [Using SwiftUI with UIKit](/documentation/UIKit/using-swiftui-with-uikit)
- [Unifying your app’s animations](/documentation/swiftui/unifying-your-app-s-animations)
- [UIHostingController](/documentation/swiftui/uihostingcontroller)
- [UIHostingControllerSizingOptions](/documentation/swiftui/uihostingcontrollersizingoptions)
- [UIHostingSceneDelegate](/documentation/swiftui/uihostingscenedelegate)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
