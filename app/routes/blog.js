module.exports = function(app) {

  app.get('/blog/new', function(request, response) {
    response.render('blogs/posts/new');
  });

  app.get('/blog/index', function(request, response) {
    var connection = app.config.db();
    var blogDAO = new app.app.models.blogDAO(connection);

    blogDAO.getBlog(function(error, result) {
      response.render("blogs/posts/index", { postagem: result });
    });
  });

  app.post('/blog/create', function(request, response) {
    var postagem = request.body;
    var connection = app.config.db();
    var blogDAO = new app.app.models.blogDAO(connection);

    blogDAO.createPost(postagem, function(error, result) {
      response.redirect("blog/index");
    });
  });
}