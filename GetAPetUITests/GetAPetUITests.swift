import XCTest

class GetAPetUITests: BaseXCUITest {

//    let app = XCUIApplication()
//
//    override func setUpWithError() throws {
//      app.launch()
//      continueAfterFailure = false
//    }
//
//    override func tearDownWithError() throws {
//
//    }

  func testNavigationBarLabelExists() throws {
    let labelVariable = GetAPetApp.petExplorer.element
    XCTAssertTrue(labelVariable.exists)
    }
  
  func testBirdAdoptCollection() throws {
    GetAPetApp.birds.element.tap()
    GetAPetApp.happy.element.tap()
    GetAPetApp.adopt.element.tap()
    GetAPetApp.happyAdoptCollection.element.tap()
    XCTAssertEqual(GetAPetApp.yourPetHappy.element.label, AccessibilityIdentifier.yourPetHappy.rawValue)
    }
  
  func testPetExplorerBackButton() throws {
    GetAPetApp.squirrels.element.tap()
    GetAPetApp.chippy.element.tap()
    GetAPetApp.petExplorerButton.element.tap()
    XCTAssertTrue(GetAPetApp.petExplorer.element.exists)
  }
  
  func testSwipeUp() throws {
    GetAPetApp.cats.element.tap()
    GetAPetApp.penguins.element.tap()
    GetAPetApp.helen.element.swipeUp()
    GetAPetApp.fred.element.tap()
    XCTAssertEqual(BaseXCUITest.label, AccessibilityIdentifier.fred.rawValue)
  }

//    Predefined function to test performance
//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
