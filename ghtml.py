#!d:\python27\python.exe
# -*- coding: utf-8 -*-

import pystache
import mysql.connector

config = {
    'user': 'root',
    'password': '',
    'host': '127.0.0.1',
    'database': 'mcheck',
    'raise_on_warnings': True,
    }
cnx = mysql.connector.connect(**config)

cursor = cnx.cursor()
cursor.execute("SELECT date, description, amount FROM register")



all_data = {
    'title':u'Список'.encode('utf-8'),
    'items':[],
}

for (date, description, amount) in cursor:
    all_data['items'].append({
        'date':u"{:%d %b %Y}".format(date),
        'amount':u"{:.2f}".format(amount),
        'description':u"{}".format(description),
    })

cursor.close()
cnx.close()



renderer = pystache.Renderer()
renderer.file_encoding = 'utf-8'
renderer.string_encoding = 'utf-8'
print "Content-Type: text/html"
print ""
print renderer.render_path('ghtml.mustache', all_data).encode('utf8')

