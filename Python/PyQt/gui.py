import sys

from PyQt5.QtCore import *
from PyQt5.QtWidgets import QWidget, QApplication


class MainWidget(QWidget):
    def __init__(self):
        super(MainWidget, self).__init__()


if __name__ == '__main__':
    app = QApplication(sys.argv)
    a = MainWidget()
    a.show()
    sys.exit(app.exec_())
