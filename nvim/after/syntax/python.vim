"au BufRead,BufNewFile *.py hi python_class_and_types ctermfg=blue
"au BufRead,BufNewFile *.py syn match python_class_and_types /\w*\:\ \zs[a-zA-Z_][a-zA-Z0-9_.]*\ze[,) ]/
"au BufRead,BufNewFile *.py syn match python_class_and_types /\w*\:\ \zs[a-zA-Z_][a-zA-Z0-9_.]*\ze$/
"au BufRead,BufNewFile *.py syn match python_class_and_types /->\ \zs[a-zA-Z_][a-zA-Z0-9_.]*\ze[:]/
