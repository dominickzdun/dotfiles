#!/bin/bash

(
  case "$(tlpctl get)" in
  performance)
    tlpctl balanced
    ;;
  balanced)
    tlpctl power-saver
    ;;
  power-saver)
    tlpctl performance
    ;;
  esac
) &
