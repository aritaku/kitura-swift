import Kitura
import KituraNet
import HeliumLogger

HeliumLogger.use()

let router = Router()

router.get("/") { request, response, next in
    response.status(HTTPStatusCode.OK).send("Hello, World!")
    next()
}

router.get("/users/:user") { request, response, next in
    response.setHeader("Content-Type", value: "text/html; charset=utf-8")
    let p1 = request.params["user"] ?? "(nil)"
    do {
        try response.status(HttpStatusCode.OK).send(
            "<!DOCTYPE html><html><body>" +
                "<b>User:</b> \(p1)" +
            "</body></html>\n\n").end()
    }
    catch {}
    next()
}


Kitura.addHTTPServer(onPort: 8090, with: router)
Kitura.run()
