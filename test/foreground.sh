echo "Creating Files"
printf "from flask import Flask, render_template\napp = Flask(__name__)\n@app.route(\'/\')\ndef hello_world():\n   color = {\'blue\': \'002aff\',\'yellow\': \'e1eb34\',\'green\': \'28fc03\',\'red\': \'fc1703\',\'purple\': \'b503fc\'}\n   return render_template(\'index.html\', color=color)" > test.py  
