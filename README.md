# RNDeviceName

Micro library in Swift to get Apple device model name.

Gets the marketing name from Apple devices, such as "iPhone 13 mini".


## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org)
To integrate RNDeviceName into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'RNDeviceName'
```

### Swift Package Manager

[Swift Package Manager](https://swift.org/package-manager/)
Once you have your Swift package set up, 
1. Add `RNDeviceName` to the `dependencies` value of your `Package.swift`.
```swift
dependencies: [
    .package(url: "https://github.com/souzainf3/RNDeviceName.git", .upToNextMajor(from: "1.1.0")) // set you tag or branch
]
```

2. Open Swift Package Manager, copy https://github.com/souzainf3/RNDeviceName to the search bar
For version, you may use tags or master branch.


### Manually

1. Drag `Sources` folder to your project


## Usage

### UIDevice extension

```swift
UIDevice.current.marketingName // such as `iPhone 13 mini`
```

### Device class

```swift
Device.current.marketingName // such as `iPhone 13 mini`
```


## References:
- https://support.apple.com/en-us/HT201296 (iPhone)
- https://support.apple.com/en-us/HT201471 (iPad)
- https://support.apple.com/en-us/HT200008 (AppleTV)
- https://www.theiphonewiki.com/wiki/Models#iPad (Unofficial) 

List of Device Models, need to use SQLite to view the traits databases
> Online SQLite Viewer https://inloop.github.io/sqlite-viewer/```

```
/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/usr/standalone/device_traits.db
/Applications/Xcode.app/Contents/Developer/Platforms/WatchOS.platform/usr/standalone/device_traits.db
/Applications/Xcode.app/Contents/Developer/Platforms/AppleTVOS.platform/usr/standalone/device_traits.db
```
