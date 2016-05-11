Bash script that prints the current weather.



I just made one that uses the frontpage's "Full Forecast" link which has your current location filled in.



#!/bin/bash
curl -s "$(curl -s 'https://www.wunderground.com/' | sed -n '/Full Forecast/{s#[^"]*"\([^"]*\)".*#https://www.wunderground.com\1#p}')" | sed -n '/"curCond"/{ s#.*wx-value[^>]*>\([^<]*\)<.*#\1#; h }; /"curTemp"/{ N; N; N; s#.*wx-value[^>]*>\([^<]*\)<.*wx-unit[^>]*>&deg;\(.\).*#\1°\2 #; G; s#\n##; p }'

chmod +x
