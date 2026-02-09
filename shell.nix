with (import <nixpkgs> {});
  mkShell {
    buildInputs = [
      bundler
      jekyll
    ];
  }
