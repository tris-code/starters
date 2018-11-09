import Log
import Web
import Fiber
import TrisProject

async.use(Fiber.self)

async.main {
    do {
        let server = try WebHost(bootstrap: TrisProject())
        try server.run()
    } catch {
        Log.critical(String(describing: error))
    }
}

async.loop.run()
