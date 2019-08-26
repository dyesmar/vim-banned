" Vim syntax file
" Language: C/C++ (highlights APIs banned by Microsoft's SDL)
" Maintainer: Ramsey Dow <yesmar@gmail.com>
" Last Change: Sun Aug 25 18:08:41 PDT 2019
" Version: 4.0 - updated to current public version, dated 18-May-2018

" APIs collected from Microsoft's publicly available banned.h header file:
" https://github.com/x509cert/banned/blob/master/banned.h

" TO INSTALL:
" copy this file to your runtimepath in after/syntax dir as c.vim and cpp.vim.
" to determine what your runtimepath is based on your OS please refer to:
" http://vimdoc.sourceforge.net/htmldoc/options.html#%27runtimepath%27

" SDL 6.0 Requirements

syn keyword required_banned _ftcscat
syn keyword required_banned _ftcscpy
syn keyword required_banned _getts
syn keyword required_banned _gettws
syn keyword required_banned _mbccat
syn keyword required_banned _mbccpy
syn keyword required_banned _mbscat
syn keyword required_banned _mbscpy
syn keyword required_banned _mbsnbcat
syn keyword required_banned _mbsnbcpy
syn keyword required_banned _mbsncat
syn keyword required_banned _mbsncpy
syn keyword required_banned _stprintf
syn keyword required_banned _tccat
syn keyword required_banned _tccpy
syn keyword required_banned _tcscat
syn keyword required_banned _tcscpy
syn keyword required_banned _tcsncat
syn keyword required_banned _tcsncpy
syn keyword required_banned _vstprintf
syn keyword required_banned CopyMemory
syn keyword required_banned gets
syn keyword required_banned IsBadCodePtr
syn keyword required_banned IsBadHugeReadPtr
syn keyword required_banned IsBadHugeWritePtr
syn keyword required_banned IsBadReadPtr
syn keyword required_banned IsBadStringPtr
syn keyword required_banned IsBadWritePtr
syn keyword required_banned lstrcat
syn keyword required_banned lstrcatA
syn keyword required_banned lstrcatn
syn keyword required_banned lstrcatnA
syn keyword required_banned lstrcatnW
syn keyword required_banned lstrcatW
syn keyword required_banned lstrcpy
syn keyword required_banned lstrcpyA
syn keyword required_banned lstrcpyn
syn keyword required_banned lstrcpynA
syn keyword required_banned lstrcpynW
syn keyword required_banned lstrcpyW
syn keyword required_banned lstrlen
syn keyword required_banned lstrncat
syn keyword required_banned memcpy
syn keyword required_banned RtlCopyMemory
syn keyword required_banned sprintf
syn keyword required_banned sprintfA
syn keyword required_banned sprintfW
syn keyword required_banned strcat
syn keyword required_banned StrCat
syn keyword required_banned StrCatA
syn keyword required_banned strcatA
syn keyword required_banned StrCatBuff
syn keyword required_banned StrCatBuffA
syn keyword required_banned StrCatBuffW
syn keyword required_banned StrCatChainW
syn keyword required_banned StrCatN
syn keyword required_banned StrCatNA
syn keyword required_banned StrCatNW
syn keyword required_banned strcatW
syn keyword required_banned StrCatW
syn keyword required_banned strcpy
syn keyword required_banned StrCpy
syn keyword required_banned StrCpyA
syn keyword required_banned strcpyA
syn keyword required_banned StrCpyN
syn keyword required_banned strcpynA
syn keyword required_banned StrCpyNA
syn keyword required_banned StrCpyNW
syn keyword required_banned strcpyW
syn keyword required_banned StrCpyW
syn keyword required_banned strncat
syn keyword required_banned StrNCat
syn keyword required_banned StrNCatA
syn keyword required_banned StrNCatW
syn keyword required_banned StrNCpy
syn keyword required_banned strncpy
syn keyword required_banned StrNCpyA
syn keyword required_banned StrNCpyW
syn keyword required_banned swprintf
syn keyword required_banned vsprintf
syn keyword required_banned vswprintf
syn keyword required_banned wcscat
syn keyword required_banned wcscpy
syn keyword required_banned wcsncat
syn keyword required_banned wcsncpy
syn keyword required_banned wmemcpy
syn keyword required_banned wsprintf
syn keyword required_banned wsprintfA
syn keyword required_banned wsprintfW
syn keyword required_banned wvsprintf
syn keyword required_banned wvsprintfA
syn keyword required_banned wvsprintfW

" SDL 6.0 Recommendations

syn keyword recommended_banned _makepath
syn keyword recommended_banned _alloca
syn keyword recommended_banned _i64toa
syn keyword recommended_banned _i64tow
syn keyword recommended_banned _itoa
syn keyword recommended_banned _itow
syn keyword recommended_banned _mbstok
syn keyword recommended_banned _snprintf
syn keyword recommended_banned _sntprintf
syn keyword recommended_banned _sntscanf
syn keyword recommended_banned _snwprintf
syn keyword recommended_banned _splitpath
syn keyword recommended_banned _stscanf
syn keyword recommended_banned _tcstok
syn keyword recommended_banned _tmakepath
syn keyword recommended_banned _tscanf
syn keyword recommended_banned _tsplitpath
syn keyword recommended_banned _ui64toa
syn keyword recommended_banned _ui64tot
syn keyword recommended_banned _ui64tow
syn keyword recommended_banned _ultoa
syn keyword recommended_banned _ultot
syn keyword recommended_banned _ultow
syn keyword recommended_banned _vsnprintf
syn keyword recommended_banned _vsntprintf
syn keyword recommended_banned _vsnwprintf
syn keyword recommended_banned _wmakepath
syn keyword recommended_banned _wsplitpath
syn keyword recommended_banned alloca
syn keyword recommended_banned ChangeWindowMessageFilter
syn keyword recommended_banned CharToOem
syn keyword recommended_banned CharToOemA
syn keyword recommended_banned CharToOemBuffA
syn keyword recommended_banned CharToOemBuffW
syn keyword recommended_banned CharToOemW
syn keyword recommended_banned makepath
syn keyword recommended_banned OemToChar
syn keyword recommended_banned OemToCharA
syn keyword recommended_banned OemToCharW
syn keyword recommended_banned scanf
syn keyword recommended_banned snscanf
syn keyword recommended_banned snwscanf
syn keyword recommended_banned sscanf
syn keyword recommended_banned strtok
syn keyword recommended_banned swscanf
syn keyword recommended_banned vsnprintf
syn keyword recommended_banned wcstok
syn keyword recommended_banned wnsprintf
syn keyword recommended_banned wnsprintfA
syn keyword recommended_banned wnsprintfW
syn keyword recommended_banned wscanf
syn keyword recommended_banned wvnsprintf
syn keyword recommended_banned wvnsprintfA
syn keyword recommended_banned wvnsprintfW

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
