# Kotterstep ZSH Theme

The most pragmatic ZSH-theme derived some day from rkj-repos. Better looks with Fira Code, the most pragmatic font for input and code.

![Dark Theme Screenshot](/screenshot-dark.png)
![Light Theme Screenshot](/screenshot-light.png)

## Features

**Consistent colors designed with dark-first approach**

The colors do not conflict in most existing color schemes.

**Meaningful design**

The general "Kotterstep" design is:

```
prompt: component [separator component] hint
component: \[content\]
separator: -
hint: content
```

The current implementation is:

```

 +-decoration-+             +-separator-+
 |                          |
 |  +-username@hostname-+   |   +-path-component-+                  +-timestamp-component-+ 
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
    +-error-code-component-+

```

## FAQ

**Q: Why decorations in pragmatic theme?**

A: Okay, historical reasons. Will be removed some day.

**Q: What is the hint?**

A: Hint is an optional prompt element that shows up when it is needed. For example, when You open a git repo directory, You can see the branch name. When the branch name is not available - You can see the reference.

**Q: Why two lines?**

A: It is a modern trend and a way for providing more space for the user's input.

**Q: What else is used in the screenshot?**

A:

[Fira Code](https://github.com/tonsky/FiraCode)

[ZSH Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

[Windows 10-like font rendering config for Linux](https://gist.github.com/sorenvonsarvort/fa6c5341403bf306e23034a1a1a9111b)

[VS Code Integrated Terminal](https://code.visualstudio.com/docs/editor/integrated-terminal)

[Ayu Mirage VS Code Theme](https://marketplace.visualstudio.com/items?itemName=teabyii.ayu)

[VS Code Light Theme](https://marketplace.visualstudio.com/items?itemName=teabyii.ayu)