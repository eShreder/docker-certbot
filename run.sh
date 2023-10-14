LE_ETC="/etc/letsencrypt"
LE_VAR="/var/lib/letsencrypt"

test -d $LE_ETC || mkdir $LE_ETC
test -d $LE_VAR || mkdir $LE_VAR

sudo docker run -it --rm --name certbot \
    -v "${PWD}${LE_ETC}:/etc/letsencrypt" \
    -v "${PWD}${LE_VAR}:/var/lib/letsencrypt" \
    -v "/var/html:/var/html" \
    certbot/certbot certonly
