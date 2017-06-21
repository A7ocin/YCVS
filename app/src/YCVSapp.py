#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
from PySide import QtGui

class Example(QtGui.QMainWindow):
    
    def __init__(self):
        super(Example, self).__init__()
        
        self.initUI()
        
    def initUI(self):
        #Labels
        nameL = QtGui.QLabel("Name")
        contactsL = QtGui.QLabel("Contacts")

        #Text areas
        nameT = QtGui.QTextEdit()
        contactsT1 = QtGui.QTextEdit()
        contactsT2 = QtGui.QTextEdit()
        contactsT3 = QtGui.QTextEdit()
        contactsT4 = QtGui.QTextEdit()
        contactsT5 = QtGui.QTextEdit()
        contactsT6 = QtGui.QTextEdit()
        contactsT7 = QtGui.QTextEdit()
        contactsT8 = QtGui.QTextEdit()
        contactsT9 = QtGui.QTextEdit()
        
        textEdit = QtGui.QTextEdit()
        self.setCentralWidget(textEdit)

        exitAction = QtGui.QAction('Exit', self)
        exitAction.setShortcut('Ctrl+Q')
        exitAction.setStatusTip('Exit application')
        exitAction.triggered.connect(self.close)

        self.statusBar()

        menubar = self.menuBar()
        fileMenu = menubar.addMenu('&File')
        fileMenu.addAction(exitAction)


        nameTB = self.addToolBar(' Name ')
        nameTB.addWidget(nameL)
        nameTB.addWidget(nameT)

        contactsTB = self.addToolBar(' Contacts ')
        contactsTB.addWidget(contactsL)
        contactsTB.addWidget(contactsT1)
        contactsTB.addWidget(contactsT2)
        contactsTB.addWidget(contactsT3)
        contactsTB.addWidget(contactsT4)
        contactsTB.addWidget(contactsT5)
        contactsTB.addWidget(contactsT6)
        contactsTB.addWidget(contactsT7)
        contactsTB.addWidget(contactsT8)
        contactsTB.addWidget(contactsT9)
        
        self.setGeometry(300, 300, 350, 250)
        self.setWindowTitle('YCVS app')
        self.show()
        
        
def main():
    
    app = QtGui.QApplication(sys.argv)
    ex = Example()
    sys.exit(app.exec_())


if __name__ == '__main__':
    main()