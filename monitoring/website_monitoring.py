#!/usr/bin/env python3

import requests
import smtplib
import time
import sys

if len(sys.argv) == 2:
    sys.path.append("./tools")
    from logos import Logo
    import catch_exception as ce

    Logo('Website Monitoring')

time.sleep(1)

url = input('Your URL: ')
if len(sys.argv) == 2: ce.__input__(url)

PORT = 587

Your_Email = input('Your email: ')
if len(sys.argv) == 2: ce.__input__(Your_Email)

"""
Get your password from:
https://myaccount.google.com/apppasswords
"""
Your_Password = input('Your password: ')
if len(sys.argv) == 2: ce.__input__(Your_Password)

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
