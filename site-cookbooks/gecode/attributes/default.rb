default['gecode']['version']       = '3.7.3'
default['gecode']['url']           = "http://www.gecode.org/download/gecode-#{node['gecode']['version']}.tar.gz"
default['gecode']['autoconf_opts'] = %w{
  --disable-doc-dot
  --disable-doc-search
  --disable-doc-tagfile
  --disable-doc-chm
  --disable-doc-docset
  --disable-qt
  --disable-examples
}
