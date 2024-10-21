BACKGROUND='#16161d'
RED='#e46876'
BLUE='#9cabca'
GREY='#727169'

i3lock -c ${BACKGROUND}9d \
--ind-pos=50:h-40 \
--radius=30 \
--verif-text="" \
--wrong-text="" \
--noinput="" \
--insidever-color=${BACKGROUND}dd \
--insidewrong-color=${BACKGROUND}dd \
--inside-color=${BACKGROUND}dd \
--ringwrong-color=$RED \
--ring-color=$GREY \
--ringver-color=$BLUE \
--keyhl-color=$BLUE \
--bshl-color=$RED \
--pass-media-keys \
--pass-screen-keys \
--pass-volume-keys \
--no-modkey-text
