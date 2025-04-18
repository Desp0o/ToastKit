import XCTest
@testable import ToastKit

final class ToastStackTests: XCTestCase {
  private var sut: ToastStackManager!
  
  override func setUpWithError() throws {
    sut = ToastStackManager()
  }
  
  override func tearDownWithError() throws {
    sut = nil
  }
  
  @MainActor func testAddToastToStack() throws {
    //Given
    XCTAssertTrue(sut.toasts.isEmpty)
    
    //When
    sut.show(title: "test", toastColor: .success, autoDisappearDuration: 2)
    
    //Then
    XCTAssertEqual(sut.toasts.count, 1)
  }
  
  @MainActor func testToastDissapearWithDuration() async throws {
    // Given
    sut.show(title: "Auto Disappear", toastColor: .info, autoDisappearDuration: 2.0)
    XCTAssertEqual(sut.toasts.count, 1)
    
    Task {
      // When
      try await Task.sleep(nanoseconds: 2_000_000_000)
      
      // Then
      XCTAssertEqual(sut.toasts.count, 0)
    }
  }
  
  func testRemoveToastFromToasts() throws {
    //Given
    let toast1 = ToastItemModel(title: "One", toastColor: .info, autoDisappearDuration: 2.0)
    sut.toasts = [toast1]
    
    XCTAssertEqual(sut.toasts.count, 1)

    //When
    sut.removeToast(toast1)
    
    //Then
    XCTAssertTrue(sut.toasts.isEmpty)
  }
}
