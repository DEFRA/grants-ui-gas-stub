import { applications, applicationStatus } from '../routes/applications.js'
import { health } from '../routes/health.js'

const router = {
  plugin: {
    name: 'router',
    register: (server, _options) => {
      server.route([applications, applicationStatus])
      server.route([health])
    }
  }
}

export { router }
