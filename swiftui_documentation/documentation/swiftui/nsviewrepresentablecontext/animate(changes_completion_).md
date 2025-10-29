---
title: animate(changes:completion:)
description: Animates changes using the animation in the current transaction.
source: https://developer.apple.com/documentation/swiftui/nsviewrepresentablecontext/animate(changes:completion:)
timestamp: 2025-10-29T00:12:25.939Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nsviewrepresentablecontext](/documentation/swiftui/nsviewrepresentablecontext)

**Instance Method**

# animate(changes:completion:)

**Available on:** macOS 15.0+

> Animates changes using the animation in the current transaction.

```swift
@backDeployed(before: macOS 15.4)
@MainActor @preconcurrency func animate(changes: () -> Void, completion: (() -> Void)? = nil)
```

## Parameters

**changes**

A closure that changes animatable properties.



**completion**

A closure to execute after the animation completes.



## Discussion

This combines doc://com.apple.documentation/documentation/appkit/nsanimationcontext/4433144-animate with the current transaction’s animation. When you start a SwiftUI animation using [withAnimation(_:_:)](/documentation/swiftui/withanimation(_:_:)) and have a mutated SwiftUI state that causes the representable object to update, use this method to animate changes in the representable object using the same `Animation` timing.

```swift
struct ContentView: View {
    @State private var isCollapsed = false
    var body: some View {
        ZStack {
            MyDetailView(isCollapsed: isCollapsed)
            MyRepresentable(isCollapsed: $isCollapsed)
            Button("Collapse Content") {
                withAnimation(.bouncy) {
                    isCollapsed = true
                }
            }
        }
    }
}

struct MyRepresentable: NSViewRepresentable {
    @Binding var isCollapsed: Bool

    func updateNSView(_ nsView: NSViewType, context: Context) {
        if isCollapsed && !nsView.isCollapsed {
            context.animate {
                nsView.collapseSubview()
                nsView.layoutSubtreeIfNeeded()
            }
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
