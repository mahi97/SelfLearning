from cx_Freeze import setup, Executable

# Dependencies are automatically detected, but it might need
# fine tuning.
buildOptions = dict(packages = [], excludes = [])

import sys
base = 'Win32GUI' if sys.platform=='win32' else None

executables = [
    Executable('gui.py', base=base)
]

setup(name='PyQt-Test',
      version = '1',
      description = 'adsf',
      options = dict(build_exe = buildOptions),
      executables = executables)
