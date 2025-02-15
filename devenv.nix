{ pkgs, lib, config, inputs, ... }:

{
  env.LABNAME = "0xthefr34k-lab";
  packages = [ pkgs.git pkgs.uv ];

  languages.python = {
    uv.enable = true;
    enable = true;
    venv.enable = true;
    venv.requirements = ''
     git+https://github.com/ShutdownRepo/shellerator
     git+https://github.com/0xthefr34k/pwncat-cs
    '';
    # libraries = [ pkgs.cairo ];
  };
}
