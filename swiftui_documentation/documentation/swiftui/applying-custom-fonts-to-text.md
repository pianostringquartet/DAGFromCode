---
title: Applying custom fonts to text
description: Add and use a font in your app that scales with Dynamic Type.
source: https://developer.apple.com/documentation/swiftui/applying-custom-fonts-to-text
timestamp: 2025-10-29T00:15:11.818Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Applying custom fonts to text

> Add and use a font in your app that scales with Dynamic Type.

## Overview

SwiftUI supports styling text views using the built-in fonts, and uses a system font by default. Rather than using a system-provided font, you can use custom fonts by including the font files in your Xcode project. To use a custom font, add the font file that contains your licensed font to your app, and then apply the font to a text view or set it as a default font within a container view. SwiftUI’s adaptive text display scales the font automatically using Dynamic Type.

Dynamic Type allows users to choose the size of textual content displayed onscreen. It helps users who need larger text for better readability and accommodates those who can read smaller text, allowing more information to appear onscreen.

### Add the font files to the project

To add the font files to your Xcode project:

1. In Xcode, select the Project navigator.
2. Drag your fonts from a Finder window into your project. This copies the fonts to your project.
3. Select the font or folder with the fonts, and verify that the files show their target membership checked for your app’s targets.



### Identify the font files to include in the app bundle

For iOS, watchOS, tvOS, or Mac Catalyst targets, add the [UIApp Fonts](/documentation/BundleResources/Information-Property-List/UIAppFonts) key to your app’s `Info.plist` file. For the key’s value, provide an array of strings containing the relative paths to any added font files. For a macOS app target, use the [ATSApplication Fonts Path](/documentation/BundleResources/Information-Property-List/ATSApplicationFontsPath) key in your target’s `Info.plist` file, and provide the name of the folder that holds the fonts as the value for that key.

In the following example, the font file is inside the `project_fonts` directory, so you use `project_fonts/MyFont.ttf` as the string value in the `Info.plist` file.



### Apply a font supporting dynamic sizing

Use the [custom(_:size:)](/documentation/swiftui/font/custom(_:size:)) method to retrieve an instance of your font and apply it to a text view with the [font(_:)](/documentation/swiftui/text/font(_:)) modifier. When retrieving the font with [custom(_:size:)](/documentation/swiftui/font/custom(_:size:)), match the name of the font with the font’s PostScript name. You can find the postscript name of a font by opening it with the Font Book app and selecting the Font Info tab. If SwiftUI can’t retrieve and apply your font, it renders the text view with the default system font instead.

The following example applies the font `MyFont` to a text view:

```swift
Text("Hello, world!")
    .font(Font.custom("MyFont", size: 18))
```

The font scales adaptively from the size provided to align with the default text style of [body](/documentation/swiftui/font/body). Use the `relativeTo` parameter to specify a text style to scale with other than the default of `body`. For example, to set the font size to `32` points and adaptively scale relative to the text style of [title](/documentation/swiftui/font/title):

```swift
Text("Hello, world!")
    .font(Font.custom("MyFont", size: 32, relativeTo: .title))
```

SwiftUI doesn’t synthesize bold or italic styling for fonts. If the font supports weighted or italic variants, you can customize the typography of the text view by styling the font using the [weight(_:)](/documentation/swiftui/font/weight(_:)) or [italic()](/documentation/swiftui/font/italic()) modifiers.

For design guidance on choosing fonts to enhance your app on your target platform, see [typography](/design/Human-Interface-Guidelines/typography) in the Human Interface Guidelines.

### Scale padding using scaled metric

The [Scaled Metric](/documentation/swiftui/scaledmetric) property wrapper on a view property provides a scaled value that changes automatically with accessibility settings. When working with adaptively sized fonts, you can scale the spacing between or around the text to improve the visual design with this property wrapper.

The following example uses `@ScaledMetric` to scale the padding value surrounding a text view relative to the `body` text style, with a blue border added to identify the spacing that padding adds:

```swift
struct ContentView: View {
    @ScaledMetric(relativeTo: .body) var scaledPadding: CGFloat = 10

    var body: some View {
        Text("The quick brown fox jumps over the lazy dog.")
            .font(Font.custom("MyFont", size: 18))
            .padding(scaledPadding)
            .border(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

The preview shows the following image without any accessibility settings turned on:



Use the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) modifier to set the accessibility size category on the preview to [accessibility Large](/documentation/swiftui/contentsizecategory/accessibilitylarge):

```swift
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .accessibilityLarge)
    }
}
```

The preview then shows the following image that reflects the increased accessibility size and the scaled padding:



## Setting a font

- [font(_:)](/documentation/swiftui/view/font(_:))
- [fontDesign(_:)](/documentation/swiftui/view/fontdesign(_:))
- [fontWeight(_:)](/documentation/swiftui/view/fontweight(_:))
- [fontWidth(_:)](/documentation/swiftui/view/fontwidth(_:))
- [font](/documentation/swiftui/environmentvalues/font)
- [Font](/documentation/swiftui/font)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
