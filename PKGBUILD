# Maintainer: iyamnabeen 
# gmail:  <iym.nabeen@gmail.com>
# github: <github.com/iyamnabeen>

pkgname=metis-dwm
pkgver=1.2
pkgrel=5
pkgdesc="DWM for metis-os"
url="https://github.com/metis-os/metis-dwm"
arch=('any')
license=('GPL3')
options=(zipman)
depends=('libx11' 'libxinerama' 'libxft' 'freetype2' 
)
conflicts=('dwm')
provides=("${pkgname}")
options=(!strip !emptydirs)
install="${pkgname}.install"

prepare() {
	cp -af ../source/. ${srcdir}
}

build() {
  cd "$srcdir"
  make X11INC=/usr/include/X11 X11LIB=/usr/lib/X11 FREETYPEINC=/usr/include/freetype2
}

package() {
  cd "$srcdir"
  make PREFIX=/usr DESTDIR="$pkgdir" install
  install -m644 -D "$srcdir/dwm.desktop" "$pkgdir/usr/share/xsessions/dwm.desktop"


}
