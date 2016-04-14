" Vim syntax file
" Language: C/C++ (APIs banned by the Microsoft SDL)
" Maintainer: Ramsey Dow <ramsey@casabasecurity.com>
" Last Change: 2009-08-22 17:15:05
" Version: 1.0
" Banned API Details: http://msdn.microsoft.com/en-us/library/bb288454.aspx

" TO INSTALL: 
" copy this file to your runtimepath in after/syntax dir as c.vim and cpp.vim.
" to determine what your runtimepath is based on your OS, please refer to:
" http://vimdoc.sourceforge.net/htmldoc/options.html#%27runtimepath%27

" Banned string copy functions and replacements
syn keyword banned strcpy wcscpy _tcscpy _mbscpy StrCpy StrCpyA StrCpyW
syn keyword banned lstrcpy lstrcpyA lstrcpyW strcpyA strcpyW _tccpy _mbccpy

" Banned string concatenation functions and replacements
syn keyword banned strcat wcscat _tcscat _mbscat StrCat StrCatA StrCatW
syn keyword banned lstrcat lstrcatA lstrcatW StrCatBuffW StrCatBuff
syn keyword banned StrCatBuffA StrCatChainW strcatA strcatW _tccat _mbccat

" Banned sprintf functions and replacements
syn keyword banned wnsprintf wnsprintfA wnsprintfW sprintfW sprintfA wsprintf
syn keyword banned wsprintfW wsprintfA sprintf swprintf _stprintf

" Banned 'n' sprintf functions and replacements
syn keyword banned _snwprintf _snprintf _sntprintf nsprintf

" Banned variable argument sprintf functions and replacements
syn keyword banned wvsprintf wvsprintfA wvsprintfW vsprintf _vstprintf
syn keyword banned vswprintf

" Banned variable argument 'n' sprintf functions and replacements
syn keyword banned _vsnprintf _vsnwprintf _vsntprintf wvnsprintf wvnsprintfA
syn keyword banned wvnsprintfW

" Banned 'n' string copy functions and replacements
syn keyword banned strncpy wcsncpy _tcsncpy _mbsncpy _mbsnbcpy StrCpyN
syn keyword banned StrCpyNA StrCpyNW StrNCpy strcpynA StrNCpyA StrNCpyW
syn keyword banned lstrcpyn lstrcpynA lstrcpynW _fstrncpy

" Banned 'n' string concatenation functions and replacements
syn keyword banned strncat wcsncat _tcsncat _mbsncat _mbsnbcat StrCatN
syn keyword banned StrCatNA StrCatNW StrNCat StrNCatA StrNCatW lstrncat
syn keyword banned lstrcatnA lstrcatnW lstrcatn _fstrncat

" Banned string tokenizing functions and replacements
syn keyword banned strtok _tcstok wcstok _mbstok

" Banned Makepath functions and replacements
syn keyword banned Makepath _tmakepath _makepath _wmakepath

" Banned Splitpath functions and replacements
syn keyword banned _splitpath _tsplitpath _wsplitpath

" Banned scanf functions and replacements
syn keyword banned scanf wscanf _tscanf sscanf swscanf _stscanf

" Banned 'n' scanf functions and replacements
syn keyword banned snscanf snwscanf _sntscanf

" Banned numeric conversion functions and replacements
syn keyword banned _itoa _itow _i64toa _i64tow _ui64toa _ui64tot _ui64tow
syn keyword banned _ultoa _ultot _ultow

" Banned gets functions and replacements
syn keyword banned gets _getts _gettws

" Banned IsBad* functions and replacements
syn keyword banned IsBadWritePtr IsBadHugeWritePtr IsBadReadPtr
syn keyword banned IsBadHugeReadPtr IsBadCodePtr IsBadStringPtr

" Banned OEM conversion functions and replacements
syn keyword banned CharToOem CharToOemA CharToOemW OemToChar OemToCharA
syn keyword banned OemToCharW CharToOemBuffA CharToOemBuffW

" Banned stack dynamic memory allocation functions and replacements
syn keyword banned alloca _alloca

" Banned string length functions and replacements
syn keyword banned strlen wcslen _mbslen _mbstrlen StrLen lstrlen

" console/terminal settings
if has("win32")
  hi banned term=reverse cterm=reverse ctermfg=White ctermbg=Red
else
  hi banned term=reverse cterm=reverse ctermfg=Red ctermbg=White
endif

" gui settings
hi banned gui=reverse guifg=Red guibg=White

let b:current_syntax = "banned"
