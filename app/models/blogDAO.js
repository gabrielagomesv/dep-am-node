function BlogDAO(connection) {
  this._connection = connection;
}

BlogDAO.prototype.getBlog = function(callback) {
  this._connection.query('SELECT * FROM t_sbfy_postagens', callback);
}

BlogDAO.prototype.createPost = function(postagem, callback) {
  this._connection.query('INSERT INTO t_sbfy_postagens SET ? ', postagem, callback);
}

module.exports = function() {
  return BlogDAO;
}