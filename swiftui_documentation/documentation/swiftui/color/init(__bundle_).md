---
title: init(_:bundle:)
description: Creates a color from a color set that you indicate by name.
source: https://developer.apple.com/documentation/swiftui/color/init(_:bundle:)
timestamp: 2025-10-29T00:13:10.880Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Initializer**

# init(_:bundle:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a color from a color set that you indicate by name.

```swift
init(_ name: String, bundle: Bundle? = nil)
```

## Parameters

**name**

The name of the color resource to look up.



**bundle**

The bundle in which to search for the color resource. If you don’t indicate a bundle, the initializer looks in your app’s main bundle by default.



## Discussion

Use this initializer to load a color from a color set stored in an Asset Catalog. The system determines which color within the set to use based on the environment at render time. For example, you can provide light and dark versions for background and foreground colors:



You can then instantiate colors by referencing the names of the assets:

```swift
struct Hello: View {
    var body: some View {
        ZStack {
            Color("background")
            Text("Hello, world!")
                .foregroundStyle(Color("foreground"))
        }
        .frame(width: 200, height: 100)
    }
}
```

SwiftUI renders the appropriate colors for each appearance:



## Creating a color

- [init(_:)](/documentation/swiftui/color/init(_:))
- [resolve(in:)](/documentation/swiftui/color/resolve(in:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
