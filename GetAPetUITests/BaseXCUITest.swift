import XCTest

class BaseXCUITest: XCTestCase {
  
  static let app = XCUIApplication()
  static var label: String = ""
  override func setUpWithError() throws {
      try super.setUpWithError()
      continueAfterFailure = false
      XCUIApplication().launch()
  }

  override func tearDownWithError() throws {
      try super.tearDownWithError()
  }
}

enum GetAPetApp : String {
  case petExplorer = "Pet Explorer"
  case birds = "Birds"
  case happy = "Happy"
  case adopt = "Adopt"
  case yourPetHappy = "Your pet: Happy"
  case happyAdoptCollection = "Your pet: Happy, 4 years old"
  case squirrels = "Squirrels"
  case chippy = "Chippy"
  case petExplorerButton = "GetAPet.PetDetailView"
  case cats = "Cats"
  case penguins = "Penguins"
  case helen = "Helen"
  case fred = "Fred"
  
var element : XCUIElement{
  switch self {
  case .petExplorer:
    return BaseXCUITest.app.navigationBars[AccessibilityIdentifier.petExplorer.rawValue].staticTexts[AccessibilityIdentifier.petExplorer.rawValue]
  case .birds:
    return BaseXCUITest.app.collectionViews.buttons[AccessibilityIdentifier.birds.rawValue].otherElements.containing(.staticText, identifier:AccessibilityIdentifier.birds.rawValue).element
  case .happy:
    return BaseXCUITest.app.collectionViews.cells[AccessibilityIdentifier.happyFourYearOld.rawValue].otherElements.containing(.staticText, identifier: AccessibilityIdentifier.happy.rawValue).element
  case .adopt:
    return BaseXCUITest.app.buttons[AccessibilityIdentifier.adopt.rawValue].staticTexts[AccessibilityIdentifier.adopt.rawValue]
  case .happyAdoptCollection:
    return BaseXCUITest.app.collectionViews.cells[AccessibilityIdentifier.yourPetHappyFourYearsOld.rawValue].otherElements.containing(.staticText, identifier:AccessibilityIdentifier.yourPetHappy.rawValue).element
  case .yourPetHappy:
    return BaseXCUITest.app.staticTexts[AccessibilityIdentifier.yourPetHappy.rawValue]
  case .squirrels:
    return BaseXCUITest.app.collectionViews.buttons[AccessibilityIdentifier.squirrels.rawValue].otherElements.containing(.staticText, identifier:AccessibilityIdentifier.squirrels.rawValue).element
  case .chippy:
    return BaseXCUITest.app.collectionViews.cells[AccessibilityIdentifier.chippyFourYearsOld.rawValue].otherElements.containing(.staticText, identifier:AccessibilityIdentifier.chippy.rawValue).element
  case .petExplorerButton:
    return BaseXCUITest.app.navigationBars[AccessibilityIdentifier.petExplorerButton.rawValue].buttons[AccessibilityIdentifier.petExplorer.rawValue]
  case .cats:
    return BaseXCUITest.app.collectionViews.buttons[AccessibilityIdentifier.cats.rawValue].otherElements.containing(.staticText, identifier:AccessibilityIdentifier.cats.rawValue).element
  case .penguins:
    return BaseXCUITest.app.collectionViews.buttons[AccessibilityIdentifier.penguins.rawValue].otherElements.containing(.staticText, identifier:AccessibilityIdentifier.penguins.rawValue).element
  case .helen:
    return BaseXCUITest.app.collectionViews.cells[AccessibilityIdentifier.helenFourYearsOld.rawValue].otherElements.containing(.staticText, identifier:AccessibilityIdentifier.helen.rawValue).element
  case .fred:
    BaseXCUITest.label =  BaseXCUITest.app.collectionViews.cells[AccessibilityIdentifier.fredSevenYearsOld.rawValue].staticTexts[AccessibilityIdentifier.fred.rawValue].label
    return
      BaseXCUITest.app.collectionViews.cells[AccessibilityIdentifier.fredSevenYearsOld.rawValue].otherElements.containing(.staticText, identifier: AccessibilityIdentifier.fred.rawValue).element
      
      
    }
  }
}

enum AccessibilityIdentifier : String {
  case petExplorer = "Pet Explorer"
  case birds = "Birds"
  case happy = "Happy"
  case happyFourYearOld = "Happy, 4 years old"
  case chippyFourYearsOld = "Chippy, 4 years old"
  case helenFourYearsOld = "Helen, 4 years old"
  case fredSevenYearsOld = "Fred, 7 years old"
  case yourPetHappyFourYearsOld = "Your pet: Happy, 4 years old"
  case adopt = "Adopt"
  case yourPetHappy = "Your pet: Happy"
  case squirrels = "Squirrels"
  case chippy = "Chippy"
  case petExplorerButton = "GetAPet.PetDetailView"
  case cats = "Cats"
  case penguins = "Penguins"
  case helen = "Helen"
  case fred = "Fred"
}
