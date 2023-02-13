import os
arg = os.environ["ARGUMENT"]
arg2 = os.environ["BENCH"]
if len(arg2)>1:
    os.system(f'{arg2}')

os.system(f'python3 lichess-bot.py {arg}')
