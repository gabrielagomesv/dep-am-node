module.exports = function(app) {
  app.get('/', function(request, response) {
    app.app.controllers.users.users_index(app, request, response);
  });

  app.get('/duvidas', function(request, response) {
    app.app.controllers.users.users_faq(app, request, response);
  });

  app.get('/profissional', function(request, response) {
    app.app.controllers.users.users_professional(app, request, response);
  });

  app.get('/schedule', function(request, response) {
    app.app.controllers.users.users_schedule(app, request, response);
  });

  app.get('/servicos', function(request, response) {
    app.app.controllers.users.users_services(app, request, response);
  });

  app.get('/login', function(request, response) {
    app.app.controllers.users.users_login(app, request, response);
  });

  app.get('/cadastro', function(request, response) {
    app.app.controllers.users.users_cadastro(app, request, response);
  });

  app.get('/blog', function(request, response) {
    app.app.controllers.users.users_blog(app, request, response);
  });
}