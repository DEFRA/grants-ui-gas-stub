const applications = {
  method: 'POST',
  path: '/grants/{code}/applications',
  handler: (_request, h) => {
    console.log(JSON.stringify(_request.payload))
    return h.response().code(204)
  }
}

export { applications }
