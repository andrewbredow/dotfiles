" Use Vimux to display test output
let test#strategy = 'vimux'

" Some default options
let test#ruby#rspec#options = {
  \ 'nearest': '--backtrace',
  \ 'file':    '--format documentation',
  \ 'suite':   '--tag ~slow',
\}
