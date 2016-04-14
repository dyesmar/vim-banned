banned.vim
==========

`banned.vim` is a [Vim](http://www.vim.org/) syntax highlighting plugin for C/C++ developers who follow the [Microsoft Security Development Lifecycle](http://www.microsoft.com/security/sdl/default.aspx) (SDL). It colors dangerous APIs red in order to draw attention to them. This plugin will also prove useful to those analyzing source code for potential security defects. Just follow the red and look for evidence of improper use.

I've moved the repository from [vim.org](http://www.vim.org/scripts/script.php?script_id=2753) to [github](https://github.com/) so that it can be cloned directly into your `.vim` directory with [git](http://git-scm.com/). This makes it easy to use with [Pathogen](https://github.com/tpope/vim-pathogen) and other plugin managers.

Description
-----------
The banned.vim syntax plugin will highlight APIs that have been banned by Microsoft's SDL. Details on banned APIs can be found on the [Security Development Lifecycle (SDL) Banned Function Calls](http://msdn.microsoft.com/en-us/library/bb288454.aspx) web page. This  plugin supplements the functionality of existing C and C++ vim syntax plugins.

Install Details
---------------
If you are using Pathogen, simply clone the repository into your `.vim/bundle` directory. That's all, you're done.

To install manually, copy `banned.vim` to your `runtimepath/after/syntax` directory as both `c.vim` and `cpp.vim`. This way both your existing C and C++ syntax highlighting will be amended. That's all you have to do. There is no need to modify your runtime configs. If you don't know what your `runtimepath` is then check [Vim documentation: options](http://vimdoc.sourceforge.net/htmldoc/options.html#%27runtimepath%27).
