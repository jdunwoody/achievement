var App = {
  //BASE_URL: "/extranet",
  namespace: function() {
    var obj = null, i, j, d;
    for (i = 0; i < arguments.length; i = i + 1) {
      d = arguments[i].split(".");
      obj = window;
      for (j = 0; j < d.length; j = j + 1) {
        var name = d[j];
        obj[name] = obj[name] || {};
        obj = obj[name];
      }
    }
    return obj;
  }
};


App.namespace('App.james');
