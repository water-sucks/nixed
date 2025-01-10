_: {
  services.ollama = {
    enable = true;
    user = "ollama";
    group = "ollama";
    loadModels = [
      "llama3.3"
      "codestral"
    ];
  };

  environment.persistence."/persist" = {
    directories = [
      {
        directory = "/var/lib/private/ollama";
        user = "ollama";
        group = "ollama";
        mode = "0700";
      }
    ];
  };
}
