
CIPHS=$(openssl ciphers | tr ":" "\n")
for value in $CIPHS
do
    echo $value
    openssl s_client -psk 6e7266393174657374 -psk_identity nrf91test -dtls1_2 -cipher ${value} localhost:2444
done

