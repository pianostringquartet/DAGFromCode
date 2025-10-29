---
title: Adding a background to your view
description: Compose a background behind your view and extend it beyond the safe area insets.
source: https://developer.apple.com/documentation/swiftui/adding-a-background-to-your-view
timestamp: 2025-10-29T00:11:21.374Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Adding a background to your view

> Compose a background behind your view and extend it beyond the safe area insets.

## Overview

You can add a view as a background with the [background(_:alignment:)](/documentation/swiftui/view/background(_:alignment:)) view modifier. To add a background under multiple views, or to have a background larger than an existing view, you can layer the views by placing them within a [ZStack](/documentation/swiftui/zstack), and place the view you want to be in the background at the bottom of the view stack. You can specify that a background view should ignore the safe area insets to extend the background to some or all edges.

### Add a background

If your design calls for a background, you can use the [background(_:alignment:)](/documentation/swiftui/view/background(_:alignment:)) modifier to add it underneath an existing view. The following example adds a gradient to the vertical stack using the [background(_:alignment:)](/documentation/swiftui/view/background(_:alignment:)) view modifier:

```swift
let backgroundGradient = LinearGradient(
    colors: [Color.red, Color.blue],
    startPoint: .top, endPoint: .bottom)

struct SignInView: View {
    @State private var name: String = ""

    var body: some View {
        VStack {
            Text("Welcome")
                .font(.title)
            HStack {
                TextField("Your name?", text: $name)
                    .textFieldStyle(.roundedBorder)
                Button(action: {}, label: {
                    Image(systemName: "arrow.right.square")
                        .font(.title)
                })
            }
            .padding()
        }
        .background(backgroundGradient)
    }
}
```

The [background(_:alignment:)](/documentation/swiftui/view/background(_:alignment:)) view modifier constrains the size of the background view to be the same size as the view to which it’s attached:



### Expand the background underneath your view

To create a background that’s larger than the vertical stack, use a different technique. You could add [Spacer](/documentation/swiftui/spacer) views above and below the content in the [VStack](/documentation/swiftui/vstack) to expand it, but that would also expand the size of the stack, possibly changing it’s layout. To add in a larger background without changing the size of the stack, nest the views within a [ZStack](/documentation/swiftui/zstack) to layer the [VStack](/documentation/swiftui/vstack) over the background view:

```swift
struct SignInView: View {
    @State private var name: String = ""

    var body: some View {
        ZStack {
            backgroundGradient
            VStack {
                Text("Welcome")
                    .font(.title)
                HStack {
                    TextField("Your name?", text: $name)
                        .textFieldStyle(.roundedBorder)
                    Button(action: {}, label: {
                        Image(systemName: "arrow.right.square")
                            .font(.title)
                    })
                }
                .padding()
            }
        }
    }
}
```

View sizes within a depth stack are independent, unlike when using the background view modifier. The view from [Gradient](/documentation/swiftui/gradient) expands to fill the space available to the stack, but avoids the safe area insets by default:



For more information on usings stacks to combine views, see [Building-Layouts-with-Stack](/documentation/swiftui/building-layouts-with-stack-views).

### Extend the background into the safe areas

By default, SwiftUI sizes and positions views to avoid system defined safe areas to ensure that system content or the edges of the device won’t obstruct your views. If your design calls for the background to extend to the screen edges, use the [ignoresSafeArea(_:edges:)](/documentation/swiftui/view/ignoressafearea(_:edges:)) modifier to override the default.

```swift
struct SignInView: View {
    @State private var name: String = ""
    var body: some View {
        ZStack {
            backgroundGradient
            VStack {
                Text("Welcome")
                    .font(.title)
                HStack {
                    TextField("Your name?", text: $name)
                        .textFieldStyle(.roundedBorder)
                    Button(action: {}, label: {
                        Image(systemName: "arrow.right.square")
                            .font(.title)
                    })
                }
                .padding()
            }
        }
        .ignoresSafeArea()
    }
}
```

The background gradient fills the display area of the device and ignores the safe area insets.



### Adjust views when displaying the keyboard

You can ignore the keyboard’s safe area by adding the [ignoresSafeArea(_:edges:)](/documentation/swiftui/view/ignoressafearea(_:edges:)) modifier. When you activate the keyboard, the content of the vertical stack remains fixed, ignoring the space used by the keyboard:



To get the contents of the vertical stack to respect the safe areas and adjust to the keyboard, move the modifier to only apply to the background view.

```swift
struct SignInView: View {
    @State private var name: String = ""
    var body: some View {
        ZStack {
            backgroundGradient
                .ignoresSafeArea()
            VStack {
                Text("Welcome")
                    .font(.title)
                HStack {
                    TextField("Your name?", text: $name)
                        .textFieldStyle(.roundedBorder)
                    Button(action: {}, label: {
                        Image(systemName: "arrow.right.square")
                            .font(.title)
                    })
                }
                .padding()
            }
        }
    }
}
```

To accommodate the keyboard, SwiftUI resizes and positions your view. Because the background view has the [ignoresSafeArea(_:edges:)](/documentation/swiftui/view/ignoressafearea(_:edges:)) modifier, it remains unchanged.



## Layering views

- [ZStack](/documentation/swiftui/zstack)
- [zIndex(_:)](/documentation/swiftui/view/zindex(_:))
- [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:))
- [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:))
- [background(ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(ignoressafeareaedges:))
- [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:))
- [background(in:fillStyle:)](/documentation/swiftui/view/background(in:fillstyle:))
- [overlay(alignment:content:)](/documentation/swiftui/view/overlay(alignment:content:))
- [overlay(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/overlay(_:ignoressafeareaedges:))
- [overlay(_:in:fillStyle:)](/documentation/swiftui/view/overlay(_:in:fillstyle:))
- [backgroundMaterial](/documentation/swiftui/environmentvalues/backgroundmaterial)
- [containerBackground(_:for:)](/documentation/swiftui/view/containerbackground(_:for:))
- [containerBackground(for:alignment:content:)](/documentation/swiftui/view/containerbackground(for:alignment:content:))
- [ContainerBackgroundPlacement](/documentation/swiftui/containerbackgroundplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
