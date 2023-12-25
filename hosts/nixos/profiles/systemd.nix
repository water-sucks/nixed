_: {
  # Shorthands for `systemctl` and `journalctl` commands
  environment.shellAliases = {
    sysc = "systemctl";
    syscu = "systemctl --user";

    syscs = "systemctl start";
    sysck = "systemctl stop";
    syscr = "systemctl restart";
    syscst = "systemctl status";

    syscsu = "systemctl start --user";
    syscku = "systemctl stop --user";
    syscru = "systemctl restart --user";
    syscstu = "systemctl status --user";

    syscrld = "systemctl daemon-reload";

    jc = "journalctl";
    jcu = "journalctl --user";

    jcb = "journalctl -b";
    jcf = "journalctl -f";

    jcfu = "journalctl -f --user";
  };
}
