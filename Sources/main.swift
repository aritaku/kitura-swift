import Kitura
import KituraNet
import HeliumLogger
import Foundation

HeliumLogger.use()

let router = Router()

router.get("/") { request, response, next in
    response.status(HTTPStatusCode.OK).send("Hello, World!")
    next()
}

router.get("/entry") { request, response, next in
    do {
        try response
            .status(HTTPStatusCode.OK).send("Hello, world!").end()
    }
    catch {
        print("Response Error!")
    }
    next()
}

Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()
