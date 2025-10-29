---
title: Preview(_:body:)
description: Creates a preview of a SwiftUI view.
source: https://developer.apple.com/documentation/swiftui/preview(_:body:)
timestamp: 2025-10-29T00:14:11.922Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Macro**

# Preview(_:body:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a preview of a SwiftUI view.

```swift
@freestanding(declaration) macro Preview(_ name: String? = nil, @ViewBuilder body: @escaping @MainActor () -> any View)
```

## Parameters

**name**

An optional display name for the preview. If you don’t specify a name, the canvas labels the preview using the line number where the preview appears in source.



**body**

A [View Builder](/documentation/swiftui/viewbuilder) that produces a SwiftUI view to preview. You typically specify one of your app’s custom views and optionally any inputs, model data, modifiers, and enclosing views that the custom view needs for normal operation.



## Overview

Use this macro to display a SwiftUI preview in the canvas. You typically specify at least one preview macro for every [View](/documentation/swiftui/view) that your app defines to help you develop, test, and debug the view:

```swift
struct ContentView: View {
    var body: some View {
        // ...
    }
}

#Preview {
    ContentView()
}
```

If you include more than one preview in a source file, the canvas provides controls that enable you to select which to display when that source file is active. The canvas labels the different previews with the line number where the preview appears in source. To better identify the previews in the canvas, you can give them names. For example if your `ContentView` takes a Boolean input, you can create named previews for each input state:

```swift
#Preview("Input true") {
    ContentView(someInput: true)
}

#Preview("Input false") {
    ContentView(someInput: false)
}
```

Inside the preview, you can provide different inputs, model data, and other infrastructure that the view needs for normal operation. For example, you can present a custom view as the sidebar inside a [Navigation Split View](/documentation/swiftui/navigationsplitview) if that’s how your app uses the view.

Other preview macros provide different customization options. For example, if you need to modify the appearance of a preview using one or more [Preview Trait](/documentation/DeveloperToolsSupport/PreviewTrait), instances, use the [Preview(_:traits:_:body:)](/documentation/swiftui/preview(_:traits:_:body:)) macro.

## Creating a preview

- [Preview(_:traits:_:body:)](/documentation/swiftui/preview(_:traits:_:body:))
- [Preview(_:traits:body:cameras:)](/documentation/swiftui/preview(_:traits:body:cameras:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
