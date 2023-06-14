#!/usr/bin/env python3

import requests
import smtplib
import sys
import time


def get_input(prompt):
    if len(sys.argv) == 2:
        import catch_exception as ce
        ce.__input__(prompt)
    return input(prompt)


def main():
    url = get_input('Your URL: ')

    PORT = 587

    Your_Email = get_input('Your email: ')

    """
    Get your password from:
    https://myaccount.google.com/apppasswords
    """
    Your_Password = get_input('Your password: ')

    req = requests.get(url, timeout=1)
    req.raise_for_status()

    while True:
        if req.status_code != 200:
            with smtplib.SMTP('smtp.gmail.com', PORT) as send_mail:
                send_mail.starttls()

                send_mail.login(Your_Email, Your_Password)

                sub = 'Your site is down!'
                body = 'Restart the server and make sure it is running.'
                message = f'Subject: {sub} \n\n {body}'

                send_mail.sendmail(Your_Email, Your_Email, message)
                print("Email sent!")
            break
        else:
            # Continue running the script
            continue


if __name__ == '__main__':
    if len(sys.argv) == 2:
        sys.path.append("./tools")
        from logos import Logo

        Logo('Website Monitoring')

    time.sleep(1)
    main()
