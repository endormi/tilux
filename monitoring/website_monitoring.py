#!/usr/bin/env python3

import requests
import smtplib
import sys
sys.path.append(".")
from logos import Logo
import time

Logo('Website Monitoring')
time.sleep(1)

url = input('Your URL: ')
PORT = 587
Your_Email = input('Your email: ')
"""
Get your password from:
https://myaccount.google.com/apppasswords
"""
Your_Password = input('Your password: ')


req = requests.get(url, timeout=1)
req.raise_for_status()

while True:
    if req.status_code != 200:
        with smtplib.SMTP('smtp.gmail.com', PORT) as send__mail:
            send__mail.starttls()

            send__mail.login(Your_Email, Your_Password)

            sub = 'Your site is down!'
            body = 'Restart the server and make sure it is running.'
            message = f'Subject: {sub} \n\n {body}'

            send__mail.sendmail(Your_Email, Your_Email, message)
            print("Email sent!")
        break
    else:
        # Continue running the script
        continue
