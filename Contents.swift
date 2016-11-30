//: Playground - noun: a place where people can play

import UIKit

let testClient = TestClientDummy()
testClient.runTest()

let performanceClient = PerformanceClientDummy()
performanceClient.runTest(minLength: 8, sourceFile: "TinyTale.txt")
