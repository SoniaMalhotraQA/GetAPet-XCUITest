
## Building and Running


```bash
git clone https://github.com/SoniaMalhotraQA/GetAPet-XCUITest/
cd GetAPet-XCUITest
xcodebuild -project GetAPet.xcodeproj -scheme GetAPet -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 11 Pro Max,OS=14.5' test

Test Suite 'GetAPetUITests' passed at 2021-07-12 09:44:22.845.
	 Executed 4 tests, with 0 failures (0 unexpected) in 20.667 (20.669) seconds
Test Suite 'GetAPetUITests.xctest' passed at 2021-07-12 09:44:22.846.
	 Executed 4 tests, with 0 failures (0 unexpected) in 20.667 (20.671) seconds
Test Suite 'All tests' passed at 2021-07-12 09:44:22.847.
	 Executed 4 tests, with 0 failures (0 unexpected) in 20.667 (20.673) seconds
2021-07-12 09:44:23.120 xcodebuild[3212:1013151] [MT] IDETestOperationsObserverDebug: 22.430 elapsed -- Testing started completed.
2021-07-12 09:44:23.120 xcodebuild[3212:1013151] [MT] IDETestOperationsObserverDebug: 0.000 sec, +0.000 sec -- start
2021-07-12 09:44:23.120 xcodebuild[3212:1013151] [MT] IDETestOperationsObserverDebug: 22.430 sec, +22.430 sec -- end

Test session results, code coverage, and logs:
	Library/Developer/Xcode/DerivedData/GetAPet-culbmncwdusbougbtwvrkdujxmuw/Logs/Test/Test-GetAPet-2021.07.12_9-43-59-+0200.xcresult

** TEST SUCCEEDED **
```
### Required Dependencies
If you'd rather install the development prerequisites yourself without our script:

* [**Xcode**](https://itunes.apple.com/us/app/xcode/id497799835) - The easiest way to get Xcode is from the [App Store](https://itunes.apple.com/us/app/xcode/id497799835?mt=12), but you can also download it from [developer.apple.com](https://developer.apple.com/) if you have an Apple ID registered with an Apple Developer account.
