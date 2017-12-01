import Foundation
import AWSSignatureV4
import S3

print("start S3 test upload")

// FIX manage environment config
let accessKey = ProcessInfo.processInfo.environment["AWS_ACCESS_KEY"]!
let secretKey = ProcessInfo.processInfo.environment["AWS_SECRET_KEY"]!
let bucket = ProcessInfo.processInfo.environment["AWS_BUCKET"]!
let host = bucket.appending(".s3.amazonaws.com")

let projectHome = ProcessInfo.processInfo.environment["PROJECT_HOME"]!

print("Upload to: \(host)")
print("Varibales are set")

// FIX seperate make bytes
let fm = FileManager()
let textBlob = fm.contents(atPath: projectHome.appending("/testblob.txt"))
print(textBlob?.makeString() as Any)
let bytes = textBlob?.makeBytes()

// TODO refactore the upload
try S3(host: host, accessKey: accessKey, secretKey: secretKey, region: Region.euWest1).upload(bytes: bytes!, path: "/swift/s3/test-bucket", access: AccessControlList.privateAccess)

print("Upload done 😀")
