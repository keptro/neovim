"----ale语言纠错----"
let g:ale_lint_on_text_changed   = 'normal' " 代码更改后启动检查
let g:ale_lint_on_insert_leave = 1 " 退出插入模式即检查、
let g:ale_sign_column_always = 1 " 总是显示动态检查结果
let g:ale_sign_error  = '>>' " error 告警符号
let g:ale_sign_warning = '--' " warning 告警符号
let g:ale_echo_msg_error_str = 'E' " 错误显示字符
let g:ale_echo_msg_warning_str = 'W' " 警告显示字符
let g:ale_echo_msg_format  = '[%linter%] %s [%severity%]' " 告警显示格式
" C 语言配置检查参数
let g:ale_c_gcc_options = '-Wall -Werror -O2 -std=c11'
let g:ale_c_clang_options = '-Wall -Werror -O2 -std=c11'
let g:ale_c_cppcheck_options = ''

"keep the sign gutter open
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

" show errors or warnings in my statusline
let g:airline#extensions#ale#enabled = 1

" self-define statusline
"function! LinterStatus() abort
"    let l:counts = ale#statusline#Count(bufnr(''))
"
"    let l:all_errors = l:counts.error + l:counts.style_error
"    let l:all_non_errors = l:counts.total - l:all_errors
"
"    return l:counts.total == 0 ? 'OK' : printf(
"    \  '%dW %dE',
"    \  all_non_errors,
"    \  all_errors
"    \)
"endfunction
"set statusline=%{LinterStatus()}

" echo message
" %s is the error message itself
" %linter% is the linter name
" %severity is the severity type
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" use quickfix list instead of the loclist
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-J> <Plug>(ale_next_wrap)

" run lint only on saving a file
" let g:ale_lint_on_text_changed = 'never'
" dont run lint on opening a file
" let g:ale_lint_on_enter = 0
