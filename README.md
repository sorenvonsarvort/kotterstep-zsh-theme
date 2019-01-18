# Kotterstep ZSH Theme

The most pragmatic ZSH-theme derived some day from rkj-repos. Better looks with Fira Code, the most pragmatic font for input and code.

![Screenshot](/screenshot.png)

## Features

1. Consistent colors designed with dark-first approach.

The colors do not conflict for most existing themes.

2. Meaningful design.

The general "Kotterstep" design is:

```
prompt: component [separator component] hint
component: [content
separator: -
hint: content
```

The current implementation is:

```

 +-decoration-+             +-separator-+
 |                          |
 |  +-username@hostname-+   |   +-path-+                            +-timestamp-+ 
 |  |                       |   |                                   |
 +--+-----------------------+---+-------------------------------+---+-------------------+
  ┌─[sorenvonsarvort@kathode] - [~/Projects/kotterstep-zsh-theme] - [2019-01-18 06:17:50]
  └─[130] master* cat /dev/null
    +---+-+-----+-+-----------+
    |     |       |
    |     |       +-user-input-+
    |     |
    |     +-version-hint-+
    |
    +-error-code-+

```

## FAQ

Q: Why decorations in pragmatic theme?

A: Okay, historical reasons. Will be removed some day.

Q: What is the hint?

A: Hint is an optional promt element that shows up when it is needed. For example, when You open a git repo directory, You can see the branch name. When the branch name is not available - You can see the reference.

Q: Why two lines?

A: It is a modern trend and a way for providing more space for the user's input.

Q: What else is used in the screenshot?

A:

[Fira Code](https://github.com/tonsky/FiraCode)
[ZSH Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
[Base16 Twilight](https://github.com/hartbit/base16-twilight-scheme)

```sh

export FREETYPE_PROPERTIES="truetype:interpreter-version=38"

```