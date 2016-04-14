banned.vim
==========

Microsoft SDL Banned API syntax highlighting plugin

Description
-----------
The banned.vim syntax plugin will highlight C function calls that have been
banned by Microsoft's Security Development Lifecycle (SDL). Although many of
these function calls are Windows-specific, there are quite a few that are
available in UNIX and should be avoided. This syntax plugin adds functionality
to the existing C and C++ vim syntax plugins. Details on the banned APIs can
be found on the [Security Development Lifecycle (SDL) Banned Function Calls]
(http://msdn.microsoft.com/en-us/library/bb288454.aspx) web page.

Install Details
---------------
Copy banned.vim to your runtimepath/after/syntax directory as both c.vim and
cpp.vim. This way both your C and C++ syntax highlighting will be ammended.
That's all you have to do. There is no need to modify your runtime configs.
If you don't know what your runtimepath is then check [Vim documentation:
options](http://vimdoc.sourceforge.net/htmldoc/options.html#%27runtimepath%27).
