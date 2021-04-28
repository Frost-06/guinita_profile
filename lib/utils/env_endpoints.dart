class EnvEndpoints {
  String env = "dev";

  getEndpoints(path) {
    final apiEndpoints = {
      "dev": "http://portfolio.it" + path,
      "qa": "http://portfolio.it" + path
    };
    return apiEndpoints[env];
  }
}
