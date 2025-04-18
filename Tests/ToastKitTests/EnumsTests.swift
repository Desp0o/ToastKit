//
//  EnumsTests.swift
//  ToastKit
//
//  Created by Despo on 18.04.25.
//

import XCTest
@testable import ToastKit

final class ToastColorTypesTests: XCTestCase {
  func testSuccessType() {
    XCTAssertEqual(ToastColorTypes.success.value, .green)
  }
  
  func testWarninType() {
    XCTAssertEqual(ToastColorTypes.warning.value, .yellow)
  }
  
  func testErrorType() {
    XCTAssertEqual(ToastColorTypes.error.value, .red)
  }
  
  func testInfoType() {
    XCTAssertEqual(ToastColorTypes.info.value, .blue)
  }
  
  func testCustomType() {
    XCTAssertEqual(ToastColorTypes.custom(.teal).value, .teal)
  }
}

final class ToastDirectionsTests: XCTestCase {
  func testLeadingDirection() {
    XCTAssertEqual(HorizontalDirection.leading.value, .leading)
  }
  
  func testTrailinDirection() {
    XCTAssertEqual(HorizontalDirection.trailing.value, .trailing)
  }
}

final class VerticalDirectionTests: XCTestCase {
  func testTopDirection() {
    XCTAssertEqual(VerticalDirection.top.value, .top)
  }
  
  func testBottomDirection() {
    XCTAssertEqual(VerticalDirection.bottom.value, .bottom)
  }
}
