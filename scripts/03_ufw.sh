function f_ufw {
  echo "[$i] Configuring firewall"

  sudo iptables-save > /etc/network/iptables.rules
  sudo ufw reset
  sudo ufw enable
  sudo ufw deny incoming
  sudo ufw allow outgoing

  ((i++))
}