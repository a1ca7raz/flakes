# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  applet-window-appmenu = {
    pname = "applet-window-appmenu";
    version = "v0.8.0";
    src = fetchFromGitHub ({
      owner = "psifidotos";
      repo = "applet-window-appmenu";
      rev = "v0.8.0";
      fetchSubmodules = false;
      sha256 = "sha256-ckbrSmZowy1+rp17C8OBnpX8wHRSmDRcdYjOhj4JunQ=";
    });
  };
  yet-another-spotify-tray = {
    pname = "yet-another-spotify-tray";
    version = "b6219acf8e4e4857c5c2d384a88d5fa47d80e2e8";
    src = fetchgit {
      url = "https://github.com/macdems/yet-another-spotify-tray";
      rev = "b6219acf8e4e4857c5c2d384a88d5fa47d80e2e8";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-14iArMwLQC8Mls8eUQJeR5lC+xN9uB61uS7psaLQV2s=";
    };
    date = "2022-12-20";
  };
}
