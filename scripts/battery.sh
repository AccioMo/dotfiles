#!/bin/bash

BATTERY=0
BATTERY_INFO=$(acpi -b | grep "Battery ${BATTERY}")
BATTERY_STATE=$(echo "${BATTERY_INFO}" | grep -wo "Full\|Charging\|Discharging")
BATTERY_POWER=$(echo "${BATTERY_INFO}" | grep -o '[0-9]\+%' | tr -d '%')
BATTERY_ICON=0
SPAN1="<span font='Montserrat' foreground='#4a7ba6'><b>"
SPAN2="</b></span>"
URGENT_VALUE=14

if [[ "${BATTERY_POWER}" -le "${URGENT_VALUE}" ]]; then
  BATTERY_ICON=""; SPAN1="<span font='Montserrat' foreground='#a80000'><b>"
elif [[ "${BATTERY_POWER}" -le 34 ]]; then
  BATTERY_ICON=""
elif [[ "${BATTERY_POWER}" -le 59 ]]; then
  BATTERY_ICON=""
elif [[ "${BATTERY_POWER}" -le 89 ]]; then
  BATTERY_ICON=""
else
  BATTERY_ICON=""
fi




if [[ "${BATTERY_STATE}" = "Charging" ]]; then
  echo "${SPAN1}${BATTERY_ICON}  󱐋${BATTERY_POWER}%${SPAN2}"
elif [[ "${BATTERY_STATE}" = "Discharging" ]]; then
  echo "${SPAN1}${BATTERY_ICON}   ${BATTERY_POWER}%${SPAN2}"
else
  echo "${SPAN1}${BATTERY_ICON}   ${BATTERY_POWER}%${SPAN2}"
fi

# if [[ "${BATTERY_POWER}" -le "${URGENT_VALUE}" ]]; then
#   exit 33
# fi
