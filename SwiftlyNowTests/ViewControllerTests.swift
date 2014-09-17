import UIKit
import XCTest

class ViewControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as UIViewController
        UIApplication.sharedApplication().keyWindow.rootViewController = controller
        
        NSRunLoop.mainRunLoop().runUntilDate(NSDate())
    }
    
    override func tearDown() {
        NSURLConnection.resetAll();
        super.tearDown()
    }
    
    func testMakesRequestWhenDisplayed() {
        XCTAssertGreaterThan(NSURLConnection.connections().count, 0, "Yo dawg, I expected a network call to have been made.  Wassupwiddat?")
        
    }
    
    func testHandlesNetworkError() {
        //NSURLConnection.connections().last?.failWithError(NSError(domain: "Holy kittens batman!", code: 42, userInfo: nil))
    }
}
