" Vim syntax file
" Language: C/C++ (highlights APIs banned by Microsoft's SDL)
" Maintainer: Ramsey Dow <yesmar@gmail.com>
" Last Change: 2016-04-14 14:15:38
" Version: 3.0 - verified in compliance with SDL 7.0

" APIs collected from Microsoft's publicly available banned.h header file:
" http://www.microsoft.com/en-us/download/details.aspx?id=24817

" TO INSTALL:
" copy this file to your runtimepath in after/syntax dir as c.vim and cpp.vim.
" to determine what your runtimepath is based on your OS please refer to:
" http://vimdoc.sourceforge.net/htmldoc/options.html#%27runtimepath%27

" SDL 5.0 and later Requirements

syn keyword required_banned strcpy strcpyA strcpyW wcscpy _tcscpy _mbscpy
syn keyword required_banned StrCpy StrCpyA StrCpyW lstrcpy lstrcpyA lstrcpyW
syn keyword required_banned _tccpy _mbccpy _ftcscpy

syn keyword required_banned strcat strcatA strcatW wcscat _tcscat _mbscat
syn keyword required_banned StrCat StrCatA StrCatW lstrcat lstrcatA lstrcatW
syn keyword required_banned StrCatBuff StrCatBuffA StrCatBuffW StrCatChainW
syn keyword required_banned _tccat _mbccat _ftcscat

syn keyword required_banned sprintfW sprintfA wsprintf wsprintfW wsprintfA
syn keyword required_banned sprintf swprintf _stprintf

syn keyword required_banned wvsprintf wvsprintfA wvsprintfW vsprintf
syn keyword required_banned _vstprintf vswprintf

syn keyword required_banned strncpy wcsncpy _tcsncpy _mbsncpy _mbsnbcpy
syn keyword required_banned StrCpyN StrCpyNA StrCpyNW StrNCpy strcpynA
syn keyword required_banned StrNCpyA StrNCpyW lstrcpyn lstrcpynA lstrcpynW

syn keyword required_banned strncat wcsncat _tcsncat _mbsncat _mbsnbcat
syn keyword required_banned StrCatN StrCatNA StrCatNW StrNCat StrNCatA
syn keyword required_banned StrNCatW lstrncat lstrcatnA lstrcatnW lstrcatn

syn keyword required_banned gets _getts _gettws

syn keyword required_banned IsBadWritePtr IsBadHugeWritePtr IsBadReadPtr
syn keyword required_banned IsBadHugeReadPtr IsBadCodePtr IsBadStringPtr

syn keyword required_banned memcpy RtlCopyMemory CopyMemory wmemcpy

" SDL 5.0 and later Recommendations

syn keyword recommended_banned wnsprintf wnsprintfA wnsprintfW _snwprintf
syn keyword recommended_banned _snprintf _sntprintf

syn keyword recommended_banned _vsnprintf vsnprintf _vsnwprintf _vsntprintf
syn keyword recommended_banned wvnsprintf wvnsprintfA wvnsprintfW

syn keyword recommended_banned strtok _tcstok wcstok _mbstok

syn keyword recommended_banned makepath _tmakepath _makepath _wmakepath

syn keyword recommended_banned _splitpath _tsplitpath _wsplitpath

syn keyword recommended_banned scanf wscanf _tscanf sscanf swscanf _stscanf
syn keyword recommended_banned snscanf snwscanf _sntscanf

syn keyword recommended_banned _itoa _itow _i64toa _i64tow _ui64toa _ui64tot
syn keyword recommended_banned _ui64tow _ultoa _ultot _ultow

syn keyword recommended_banned CharToOem CharToOemA CharToOemW OemToChar
syn keyword recommended_banned OemToCharA OemToCharW CharToOemBuffA
syn keyword recommended_banned CharToOemBuffW

syn keyword recommended_banned alloca _alloca

syn keyword recommended_banned strlen wcslen _mbslen _mbstrlen StrLen lstrlen

syn keyword recommended_banned ChangeWindowMessageFilter

" console/terminal settings
if has("win32")
  hi required_banned term=reverse cterm=reverse ctermfg=White ctermbg=DarkRed
  hi recommended_banned term=reverse cterm=reverse ctermfg=White ctermbg=DarkMagenta
else
  hi required_banned term=reverse cterm=reverse ctermfg=DarkRed ctermbg=White
  hi recommended_banned term=reverse cterm=reverse ctermfg=DarkMagenta ctermbg=White
endif

" gui settings
hi required_banned gui=reverse guifg=DarkRed guibg=White
hi recommended_banned gui=reverse guifg=DarkMagenta guibg=White

let b:current_syntax = "banned"
