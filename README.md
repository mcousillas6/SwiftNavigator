# SwiftNavigator

[![CI Status](https://img.shields.io/travis/Mauricio Cousillas/SwiftNavigator.svg?style=flat)](https://travis-ci.org/Mauricio Cousillas/SwiftNavigator)
[![Version](https://img.shields.io/cocoapods/v/SwiftNavigator.svg?style=flat)](https://cocoapods.org/pods/SwiftNavigator)
[![License](https://img.shields.io/cocoapods/l/SwiftNavigator.svg?style=flat)](https://cocoapods.org/pods/SwiftNavigator)
[![Platform](https://img.shields.io/cocoapods/p/SwiftNavigator.svg?style=flat)](https://cocoapods.org/pods/SwiftNavigator)

## Introduction
SwiftNavigator is a pure swift framework that helps you handle app navigation programatically.

## Basic usage
SwiftNavigatior has 3 main parts:

### Navigators
A Navigator is a class that takes care of a single navigation stack, it keeps track of the `rootViewController` and `currentViewController` and handles transitions between screens.

`BaseNavigator` is the base class that every navigator should inherit from, since it comes with implementations for every transition type out of the box.

The main rule here is that each Navigator handles one navigation stack, so in most cases, you will be dealing with only one Navigator on your app (See `AppNavigator.swift` on the example project).

There are cases where you need more than one Navigator on for your application, the most common one is the case where you have tabbed navigation, there, you should have one Navigator per tab, and one for your rootStack (the one that has the UITabNavigationController as a root).

### Routes
The route represents a screen that can be navigated to inside your app. The `Route` protocol just provides a simple interface to create a `screen`, which is an instance of a UIViewController.

The main point here is that the Route knows how to configure it's screen completely (think of it as a `prepareForSegue`).

### TransitionTypes
The `TransitionType` enum defines all the possible ways that a screen can be presented.

## Installation

### Sample usage
Just set your Navigator's initial view controller as your window's rootViewController.
```swift
 func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    let rootVC = AppNavigator.sharedInstance.rootViewController
    window?.rootViewController = rootVC
    window?.makeKeyAndVisible()
    return true
  }
```

### Cocoapods
SwiftNavigator is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftNavigator'
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a simple, decentralized dependency manager for Cocoa.

To install Xniffer, simply add the following line to your Cartfile:

```ogdl
github "alchemy/SwiftNavigator"
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements



## Author

Mauricio Cousillas, cousillas806@gmail.com

## License

SwiftNavigator is available under the MIT license. See the LICENSE file for more info.
