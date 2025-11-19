const applications = {
  method: 'POST',
  path: '/grants/{code}/applications',
  handler: (_request, h) => {
    console.log(_request.payload)
    return h.response().code(204)
  }
}

const applicationStatus = {
  method: 'GET',
  path: '/grants/{code}/applications/{clientRef}/status',
  handler: (_request, h) => {
    return h
      .response({
        status: 'RECEIVED'
      })
      .code(200)
  }
}

export { applications, applicationStatus }
