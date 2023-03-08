# from https://github.com/dmarcoux/dotfiles/blob/d784c35f0b2468e1801bf60fde12211eef5485ba/hosts/laptop-work/autorandr.nix
{ config, pkgs, lib, ... }:
{
  # If no monitor layout can be detected, fallback to the laptop profile (it's defined below)
  #services.udev.extraRules = ''ACTION=="change", SUBSYSTEM=="drm", RUN+="${pkgs.autorandr}/bin/autorandr -c"'';

  programs.autorandr = {
    enable = true;

    #defaultTarget = "laptop";

    profiles = {
      #  --------
      # | DP-1.2 |
      #  --------
      #   ------
      #  | DP-2 |
      #   ------
      "docked" = {
        fingerprint = {
          "DP-1.2" = "00ffffffffffff0010ac80404c33303215180104a53c22783a4bb5a7564ba3250a5054a54b008100b300d100714fa940818001010101565e00a0a0a029503020350055502100001a000000ff00374a4e593534354d3230334c0a000000fc0044454c4c205532373133484d0a000000fd0031561d711e010a20202020202001f802031df15090050403020716010611121513141f2023097f0783010000023a801871382d40582c250055502100001e011d8018711c1620582c250055502100009e011d007251d01e206e28550055502100001e8c0ad08a20e02d10103e960055502100001800000000000000000000000000000000000000000000000000005d";
          "DP-2" = "00ffffffffffff0009e59207000000002c1b0104a5221378021bb0a658559d260e5054000000010101010101010101010101010101019c3b803671383c403020360058c21000001aa82f803671383c403020360058c21000001a000000fe00424f452043510a202020202020000000fe004e5631353646484d2d4e36310a00ed";
        };
        config = {
          "DP-1.2" = {
            enable = true;
            crtc = 1;
            primary = false;
            position = "0x0";
            mode = "2560x1440";
            rate = "59.95";
          };
          "DP-2" = {
            enable = true;
            crtc = 0;
            primary = true;
            position = "320x1440";
            mode = "1920x1080";
            rate = "60.03";
          };
        };
      };


      #  --------
      # | HDMI-0 |
      #  --------
      #   ------
      #  | DP-2 |
      #   ------
      "home" = {
        fingerprint = {
          "HDMI-0" = "00ffffffffffff00410c17c2c52200000d1f0103803c22782a67a5a5554da2270e5054bfef00d1c0b30095008180814081c0010101014dd000a0f0703e803020350055502100001aa36600a0f0701f803020350055502100001a000000fc0050484c2032373845310a202020000000fd00174b1ea03c000a20202020202001fb020333f14c9004031f1301125d5e5f606123090707830100006d030c001000387820006001020367d85dc401788003e30f000c565e00a0a0a029503020350055502100001e023a801871382d40582c450055502100001e011d007251d01e206e28550055502100001e4d6c80a070703e8030203a0055502100001a000000004e";
          "DP-2" = "00ffffffffffff0009e59207000000002c1b0104a5221378021bb0a658559d260e5054000000010101010101010101010101010101019c3b803671383c403020360058c21000001aa82f803671383c403020360058c21000001a000000fe00424f452043510a202020202020000000fe004e5631353646484d2d4e36310a00ed";
        };
        config = {
          "HDMI-0" = {
            enable = true;
            crtc = 1;
            primary = false;
            position = "0x0";
            mode = "3840x2160";
            rate = "60.00";
          };
          "DP-2" = {
            enable = true;
            crtc = 0;
            primary = true;
            position = "960x2160";
            mode = "1920x1080";
            rate = "60.03";
          };
        };
      };

      #   ------
      #  | DP-2 |
      #   ------
      "laptop" = {
        fingerprint = {
          "DP-2" = "00ffffffffffff0009e59207000000002c1b0104a5221378021bb0a658559d260e5054000000010101010101010101010101010101019c3b803671383c403020360058c21000001aa82f803671383c403020360058c21000001a000000fe00424f452043510a202020202020000000fe004e5631353646484d2d4e36310a00ed";
        };
        config = {
          "DP-2" = {
            enable = true;
            crtc = 0;
            primary = true;
            position = "0x0";
            mode = "1920x1080";
          };
        };
      };
    };

  };

}
