" Vim color file - tango
" Generated by http://bytefluent.com/vivify 2014-12-03
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "tango"

hi IncSearch guifg=#729fcf guibg=#eeeeec guisp=#eeeeec gui=NONE ctermfg=110 ctermbg=255 cterm=NONE
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
hi SpecialComment guifg=#75507b guibg=NONE guisp=NONE gui=NONE ctermfg=96 ctermbg=NONE cterm=NONE
hi Typedef guifg=#d3d7cf guibg=NONE guisp=NONE gui=bold ctermfg=151 ctermbg=NONE cterm=bold
hi Title guifg=#eeeeec guibg=NONE guisp=NONE gui=bold ctermfg=255 ctermbg=NONE cterm=bold
hi Folded guifg=#eeeeec guibg=#75507b guisp=#75507b gui=NONE ctermfg=255 ctermbg=96 cterm=NONE
hi PreCondit guifg=#cc0000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Include guifg=#cc0000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
"hi TabLineSel -- no settings --
hi StatusLineNC guifg=#d3d7df guibg=#4e9a06 guisp=#4e9a06 gui=NONE ctermfg=146 ctermbg=64 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#555753 guibg=#000000 guisp=#000000 gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=#eeeeec guibg=#c4a000 guisp=#c4a000 gui=NONE ctermfg=255 ctermbg=1 cterm=NONE
"hi ErrorMsg -- no settings --
"hi Ignore -- no settings --
hi Debug guifg=#75507b guibg=NONE guisp=NONE gui=NONE ctermfg=96 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#8ae234 guibg=NONE guisp=NONE gui=NONE ctermfg=113 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#75507b guibg=NONE guisp=NONE gui=NONE ctermfg=96 ctermbg=NONE cterm=NONE
hi Conditional guifg=#d3d7cf guibg=NONE guisp=NONE gui=bold ctermfg=151 ctermbg=NONE cterm=bold
hi StorageClass guifg=#d3d7cf guibg=NONE guisp=NONE gui=bold ctermfg=151 ctermbg=NONE cterm=bold
hi Todo guifg=#8ae234 guibg=#4e9a06 guisp=#4e9a06 gui=bold ctermfg=113 ctermbg=64 cterm=bold
hi Special guifg=#75507b guibg=NONE guisp=NONE gui=NONE ctermfg=96 ctermbg=NONE cterm=NONE
"hi LineNr -- no settings --
hi StatusLine guifg=#eeeeec guibg=#4e9a06 guisp=#4e9a06 gui=bold ctermfg=255 ctermbg=64 cterm=bold
hi Normal guifg=#eeeeec guibg=#000000 guisp=#000000 gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi Label guifg=#d3d7cf guibg=NONE guisp=NONE gui=bold ctermfg=151 ctermbg=NONE cterm=bold
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#ffffff guibg=#00ff00 guisp=#00ff00 gui=NONE ctermfg=15 ctermbg=10 cterm=NONE
hi Search guifg=#eeeeec guibg=#c4a000 guisp=#c4a000 gui=NONE ctermfg=255 ctermbg=1 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#75507b guibg=NONE guisp=NONE gui=NONE ctermfg=96 ctermbg=NONE cterm=NONE
hi Statement guifg=#4e9a06 guibg=NONE guisp=NONE gui=bold ctermfg=64 ctermbg=NONE cterm=bold
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#06989a guibg=NONE guisp=NONE gui=italic ctermfg=30 ctermbg=NONE cterm=NONE
hi Character guifg=#c4a000 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Float guifg=#729fcf guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Number guifg=#729fcf guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Boolean guifg=#4e9a06 guibg=NONE guisp=NONE gui=bold ctermfg=64 ctermbg=NONE cterm=bold
hi Operator guifg=#d3d7cf guibg=NONE guisp=NONE gui=bold ctermfg=151 ctermbg=NONE cterm=bold
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
hi DiffDelete guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi ModeMsg -- no settings --
"hi CursorColumn -- no settings --
hi Define guifg=#cc0000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Function guifg=#8ae234 guibg=NONE guisp=NONE gui=NONE ctermfg=113 ctermbg=NONE cterm=NONE
"hi FoldColumn -- no settings --
hi PreProc guifg=#cc0000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=#d3d7cf guibg=#4e9a06 guisp=#4e9a06 gui=NONE ctermfg=151 ctermbg=64 cterm=NONE
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
hi VertSplit guifg=#eeeeec guibg=#eeeeec guisp=#eeeeec gui=NONE ctermfg=255 ctermbg=255 cterm=NONE
hi Exception guifg=#d3d7cf guibg=NONE guisp=NONE gui=bold ctermfg=151 ctermbg=NONE cterm=bold
hi Keyword guifg=#d3d7cf guibg=NONE guisp=NONE gui=bold ctermfg=151 ctermbg=NONE cterm=bold
hi Type guifg=#d3d7cf guibg=NONE guisp=NONE gui=bold ctermfg=151 ctermbg=NONE cterm=bold
hi DiffChange guifg=#eeeeec guibg=#555753 guisp=#555753 gui=NONE ctermfg=255 ctermbg=240 cterm=NONE
hi Cursor guifg=NONE guibg=#d3d7cf guisp=#d3d7cf gui=NONE ctermfg=NONE ctermbg=151 cterm=NONE
"hi SpellLocal -- no settings --
hi Error guifg=#eeeeec guibg=#ef2929 guisp=#ef2929 gui=NONE ctermfg=255 ctermbg=196 cterm=NONE
hi PMenu guifg=#d3d3d3 guibg=#006400 guisp=#006400 gui=NONE ctermfg=252 ctermbg=22 cterm=NONE
"hi SpecialKey -- no settings --
hi Constant guifg=#c4a000 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#75507b guibg=NONE guisp=NONE gui=NONE ctermfg=96 ctermbg=NONE cterm=NONE
hi String guifg=#c4a000 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
hi Repeat guifg=#d3d7cf guibg=NONE guisp=NONE gui=bold ctermfg=151 ctermbg=NONE cterm=bold
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Directory -- no settings --
hi Structure guifg=#d3d7cf guibg=NONE guisp=NONE gui=bold ctermfg=151 ctermbg=NONE cterm=bold
hi Macro guifg=#cc0000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
"hi Underlined -- no settings --
hi DiffAdd guifg=#eeeeec guibg=#3465a4 guisp=#3465a4 gui=NONE ctermfg=255 ctermbg=67 cterm=NONE
"hi TabLine -- no settings --
hi cursorim guifg=#1F1F1F guibg=#FFEE68 guisp=#FFEE68 gui=NONE ctermfg=234 ctermbg=227 cterm=NONE
"hi clear -- no settings --
hi mbenormal guifg=#cfbfad guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=187 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi lcursor guifg=NONE guibg=#d3d7cf guisp=#d3d7cf gui=NONE ctermfg=NONE ctermbg=151 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#808bed guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=252 ctermbg=60 cterm=NONE
hi user2 guifg=#7070a0 guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=103 ctermbg=60 cterm=NONE
hi user1 guifg=#00ff8b guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=48 ctermbg=60 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi htmlitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=italic ctermfg=252 ctermbg=234 cterm=NONE
hi htmlboldunderlineitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlbolditalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic ctermfg=252 ctermbg=234 cterm=bold
hi htmlunderlineitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=italic,underline ctermfg=252 ctermbg=234 cterm=underline
hi htmlbold guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold ctermfg=252 ctermbg=234 cterm=bold
hi htmlboldunderline guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlunderline guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=underline ctermfg=252 ctermbg=234 cterm=underline
"hi default -- no settings --
hi condtional guifg=#8fffff guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
