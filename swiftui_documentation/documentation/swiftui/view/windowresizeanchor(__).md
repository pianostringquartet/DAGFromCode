---
title: windowResizeAnchor(_:)
description: Sets the window anchor point used when the size of the view changes such that the window must resize.
source: https://developer.apple.com/documentation/swiftui/view/windowresizeanchor(_:)
timestamp: 2025-10-29T00:12:48.968Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# windowResizeAnchor(_:)

**Available on:** macOS 26.0+

> Sets the window anchor point used when the size of the view changes such that the window must resize.

```swift
nonisolated func windowResizeAnchor(_ anchor: UnitPoint?) -> some View
```

## Parameters

**anchor**

The window point fixed under programmatic size changes caused by the content size of the window changing. Defaults to a system defined value when `nil`.



## Return Value

A view whose scene resizes on `anchor`.

## Discussion

In SwiftUI life cycle apps, this modifier can be used to control how a window anchors when animating: drive window animations by changing the size of a view in a way that causes the window size to change. Note that if the window size is decreasing and an animation is desired, it is often necessary to (temporarily, if desired) set the [windowResizability(_:)](/documentation/swiftui/scene/windowresizability(_:)) to [content Size](/documentation/swiftui/windowresizability/contentsize).

```swift
struct Scratchpad: App {
    var body: some Scene {
        WindowGroup {
            HeightResizingExample()
        }
        .windowResizability(.contentSize)
    }
}

struct HeightResizingExample: View {
    @State private var height: CGFloat = 300

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .overlay {
                    Text("Tap to toggle")
                        .foregroundStyle(.white)
                }
        }
        .onTapGesture {
            withAnimation(.easeInOut) {
                height = height == 300 ? 700 : 300
            }
        }
        .frame(width: 250, height: height)
        .windowResizeAnchor(.top)
    }
}
```

The default anchor varies by scene type and is used when `anchor` is nil. Generally, it resolves to the `.topLeading` corner.

> [!NOTE]
> Animated window resizes are only supported in SwiftUI app-lifecycle apps. However, the anchor point is respected in all cases.

> [!NOTE]
> When animating windows on macOS, it can be helpful to explicitly specify `.topLeading` to avoid pixel cracking between the hosting view and the hosting window.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
