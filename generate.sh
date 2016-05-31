#!/usr/bin/env bash

swiftgen images --output iOS-Architecture/Resource/Generation/Images.swift iOS-Architecture/Resource/Assets.xcassets
swiftgen strings --output iOS-Architecture/Resource/Generation/Strings.swift iOS-Architecture/Resource/Storyboard/en.lproj/Localizable.strings
swiftgen storyboards --output iOS-Architecture/Resource/Generation/Storyboards.swift iOS-Architecture/Resource/Storyboard
