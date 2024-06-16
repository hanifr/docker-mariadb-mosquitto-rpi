docker run -d \
  --name mysql \
  -e MYSQL_ROOT_PASSWORD=syir2399 \
  -e MYSQL_DATABASE=syiro \
  -e MYSQL_USER=root \
  -e MYSQL_PASSWORD=syir2399 \
  -e TZ=Asia/Kuala_Lumpur \
  -v db_data:/var/lib/mysql \
  -p 3306:3306 \
  --restart=always \
  aneh2killa/rpi-mariadb