" Use Vimux to display test output
let test#strategy = 'vimux'

" Some default options
  " \ 'nearest': '--backtrace',
let test#ruby#rspec#options = {
  \ 'file':    '--format documentation',
  \ 'suite':   '--tag ~slow',
\}
