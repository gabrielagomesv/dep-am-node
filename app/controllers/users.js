module.exports.users_index = function(app, request, response) {
  response.render('users/index');
}

module.exports.users_faq = function(app, request, response) {
  response.render('users/duvidas');
}

module.exports.users_professional = function(app, request, response) {
  response.render('users/profissional');
}

module.exports.users_schedule = function(app, request, response) {
  response.render('users/schedule');
}

module.exports.users_services = function(app, request, response) {
  response.render('users/servicos');
}

module.exports.users_login = function(app, request, response) {
  response.render('users/login');
}

module.exports.users_cadastro = function(app, request, response) {
  response.render('users/cadastro');
}

module.exports.users_blog = function(app, request, response) {
  var connection = app.config.db();
  var blogDAO = new app.app.models.blogDAO(connection);

  blogDAO.getBlog(function(error, result) {
    response.render("users/blog", { postagem: result });
  });
}