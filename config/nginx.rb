server {
  listen 80;
  server_name '159.89.28.2';
}

server {
  server_name '159.89.28.2';
  # root /var/www/brand_bureau.com/current/public;
  keepalive_timeout 10;
  # client_max_body_size 5M;

  # Turn on Passenger
  passenger_enabled on;
  rails_env production;
}