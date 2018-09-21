module.exports.blog_new = function(app, request, response) {
  response.render('blogs/posts/new');
}

module.exports.blog_create = function(app, request, response) {
  var postagem = request.body;
  var connection = app.config.db();
  var blogDAO = new app.app.models.blogDAO(connection);

  blogDAO.createPost(postagem, function(error, result) {
    response.redirect("/blog/index");
  });
}

module.exports.blog_index = function(app, request, response) {
  var connection = app.config.db();
  var blogDAO = new app.app.models.blogDAO(connection);

  blogDAO.getBlog(function(error, result) {
    response.render("blogs/posts/index", { postagem: result });
  });
}