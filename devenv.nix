{ pkgs, lib, config, inputs, ... }:

{
  env.LABNAME = "0xthefr34k-lab";
  packages = [ pkgs.git pkgs.uv ];

  languages.python = {
    uv.enable = true;
    enable = true;
    # venv.enable = true;
    venv.requirements = ''
     git+https://github.com/ShutdownRepo/shellerator
     git+https://github.com/0xthefr34k/pwncat-cs
     git+https://github.com/maurosoria/dirsearch
     git+https://github.com/AetherBlack/abuseACL
    '';
    # libraries = [ pkgs.cairo ];
  };
}
