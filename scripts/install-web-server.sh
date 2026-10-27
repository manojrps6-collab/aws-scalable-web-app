
#!/bin/bash
set -euxo pipefail


exec > >(tee /var/log/user-data.log | logger -t user-data -s 2>/dev/console) 2>&1

# Install and start Apache on Amazon Linux 2023
dnf install -y httpd
systemctl enable --now httpd

# Create a page that identifies the responding EC2 instance
cat > /var/www/html/index.html <<'HTML'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Scalable Web App on AWS</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 40px auto;
           max-width: 760px; padding: 24px; line-height: 1.6; }
    .card { border: 1px solid #ddd; border-radius: 12px; padding: 24px; }
  </style>
</head>
<body>
  <div class="card">
    <h1>Welcome to Scalable Web App!</h1>
    <p>Hosted on Amazon EC2 with Apache HTTP Server.</p>
    <p>Traffic is routed through an Application Load Balancer.</p>
    <p>Infrastructure is managed by an EC2 Auto Scaling Group.</p>
    <p>Region: Asia Pacific (Sydney)</p>
    <p>Instance ID: <span id="instance-id">See EC2 console</span></p>
  </div>
</body>
</html>
HTML

systemctl is-active --quiet httpd
curl --fail --silent http://localhost/ > /dev/null
