#!/bin/bash

case "$(tlpctl get)" in
performance)
  echo "󰓅 "
  ;;
balanced)
  echo "󰾅 "
  ;;
power-saver)
  echo "󰌪 "
  ;;
*)
  echo "󰒓 Unknown"
  ;;
esac
