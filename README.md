# vt-git

Version control through the lens of variation theory: misconceptions and
critical aspects of Git — commit model, staging area, branches, and remotes.

Companion papers: [vt-prog-misconceptions] (introductory programming, same
method), [vt-debug] (debugging), and [vt-terminal] (the Unix shell). Grew
out of the [introtools] course revision.

[vt-prog-misconceptions]: https://github.com/dbosk/vt-prog-misconceptions
[vt-debug]: https://github.com/dbosk/vt-debug
[vt-terminal]: https://github.com/dbosk/vt-terminal
[introtools]: https://github.com/dbosk/introtools

## Build

```sh
git submodule update --init --recursive
make            # article.pdf + slides.pdf
```

Requires TeX with minted (`-shell-escape`), pythontex, and biber.
