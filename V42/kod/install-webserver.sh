#!/bin/bash
# Installerar och startar Apache (httpd) på Amazon Linux 2023.
# Körs på EC2-instansen efter att du anslutit via SSH.

# Uppdatera systemet
sudo dnf update -y

# Installera webbservern Apache
sudo dnf install -y httpd

# Starta webbservern nu och vid varje omstart
sudo systemctl start httpd
sudo systemctl enable httpd

# Kontrollera att den körs
sudo systemctl status httpd --no-pager
