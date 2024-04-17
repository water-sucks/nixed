{
  flake.templates = {
    c = {
      path = ./c;
      description = "C/C++ project devshell";
    };
    nodejs = {
      path = ./node;
      description = "Node project devshell";
    };
  };
}
