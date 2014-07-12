default['gecode']['url']           = 'http://pkgs.fedoraproject.org/repo/pkgs/gecode/gecode-3.7.3.tar.gz/7a5cb9945e0bb48f222992f2106130ac/gecode-3.7.3.tar.gz'
default['gecode']['version']       = '3.7.3'
default['gecode']['autoconf_opts'] = %w{
  --disable-doc-dot
  --disable-doc-search
  --disable-doc-tagfile
  --disable-doc-chm
  --disable-doc-docset
  --disable-qt
  --disable-examples
}
