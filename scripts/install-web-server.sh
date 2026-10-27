
#!/bin/bash
exec > /var/log/user-data.log 2>&1
set -eux

dnf install -y httpd

mkdir -p /var/www/html

cat > /var/www/html/index.html <<'HTML'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Scalable Web App on AWS</title>
</head>
<body>
  <h1>Welcome to Scalable Web App!</h1>
  <p>Hosted on Amazon EC2 with Apache HTTP Server.</p>
  <p>Traffic is routed through an Application Load Balancer.</p>
  <p>Infrastructure is managed by an EC2 Auto Scaling Group.</p>
  <p>Region: Asia Pacific (Sydney)</p>
</body>
</html>
HTML

systemctl enable --now httpd
curl --fail --silent --show-error --max-time 5 http://localhost/
