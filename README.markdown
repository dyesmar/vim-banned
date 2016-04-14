# banned.vim

**banned.vim** is a syntax highlighting plugin for Vim. Its *raison d'être* is to draw attention to [application programming interfaces (APIs)](https://en.wikipedia.org/wiki/Application_programming_interface) that are considered dangerous, if for no other reason than the fact that they are frequently misused. Although suspect APIs have been discussed in security circles for decades, Microsoft's [Security Development Lifecycle (SDL)](https://www.microsoft.com/security/sdl/default.aspx) has brought the concept into the spotlight. Although the SDL remains focused on the [Win32](https://en.wikipedia.org/wiki/Windows_API#Win32) API, many of these APIs have UNIX counterparts which are similarly problematic.

Banned APIs should not be used in new code, and should be removed from legacy code over time. APIs are banned for any number of reasons, but a failure to properly bounds check input is a common trend. All of the APIs highlighted by this plugin were originally documented in [Security Development Lifecycle (SDL) Banned Function Calls](https://msdn.microsoft.com/en-us/library/bb288454.aspx) by Michael Howard. This document defines two types of banned APIs—*required* and *recommended*—and has the following to say about them:

> For the functions marked as "recommended", please consider this a strong recommendation and evaluate the function against your own security requirements, elevating them to "required" as necessary. In any case, none of the listed banned functions should be used in new code.
> —<cite>Michael Howard</cite>

The **banned.vim** plugin applies color syntax highlighting to banned APIs in order to draw attention to them. APIs that are required to be banned show up in reverse red,  while APIs that are recommended to be banned show up in reverse magenta. The following screen grab shows the plugin in action:

<img src="banned-example.png" alt="Example banned APIs" style="width: 550px; display: block; margin-left: auto; margin-right: auto"/>

The [`strcpy`](https://en.wikipedia.org/wiki/C_string_handling#strcpy) function is a required banned API, while the  [`strlen`](https://en.wikipedia.org/wiki/C_string_handling#strlen) function is a recommended banned API. (Generally, use of `strlen` should fine so long as the input cannot be controlled by an attacker. All bets are off if you pass it strings read from an untrusted source, such as a [network socket](https://en.wikipedia.org/wiki/Network_socket).)

The sudden appearance of reverse red or magenta while programming should alert you to the fact that you need to think about what you are doing. If you do nothing else, check the documentation to ensure that you are using the function correctly and are aware of all of its security considerations. In addition to programming, this plugin should prove useful to those analyzing source code for potential security defects. Look for functions highlighted red or magenta and trace the path of execution and see if you can control its input.

I originally created **banned.vim** because I have to develop SDL-compliant code from time to time. It's been three years since I last updated the project. A lot has happened since then: Microsoft bumped the SDL to version 6.0 and I finally started using Tim Pope's [pathogen.vim](https://github.com/tpope/vim-pathogen) plugin. This new incarnation of **banned.vim** brings it into alignment
with both SDL 6.0 and pathogen. Huzzah!

## Installation

If you don't have a preferred installation method, I recommend installing
[pathogen.vim](https://github.com/tpope/vim-pathogen), and then simply copying and pasting the following:

    git clone https://github.com/yesmar/vim-banned ~/.vim/bundle/vim-banned

## Acknowledgements

* Mike Howard and Microsoft for making the
[banned.h](http://www.microsoft.com/en-us/download/details.aspx?id=24817) header file available for public use.
* Tim Pope for [pathogen.vim](https://github.com/tpope/vim-pathogen) and his sweet [CONTRIBUTING](https://github.com/tpope/vim-rails/blob/master/CONTRIBUTING.markdown) statement.

## License

Copyright &copy; Ramsey Dow. Distributed under the same terms as [Vim](http://www.vim.org) itself. See [`:help license`](http://vimdoc.sourceforge.net/htmldoc/uganda.html).
