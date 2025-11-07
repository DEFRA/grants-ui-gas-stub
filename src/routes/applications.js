const applications = {
  method: 'POST',
  path: '/grants/{code}/applications',
  handler: (_request, h) => {
    return h.response().code(204)
  }
}

export { applications }
