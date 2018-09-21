module.exports = function(app) {

  app.get('/blog/new', function(request, response) {
   app.app.controllers.blog.blog_new(app, request, response);
  });

  app.get('/blog/index', function(request, response) {
    app.app.controllers.blog.blog_index(app, request, response);
  });

  app.post('/blog/create', function(request, response) {
    app.app.controllers.blog.blog_create(app, request, response);
  });
}