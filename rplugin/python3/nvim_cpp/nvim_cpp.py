import neovim
import os.path
import subprocess
@neovim.plugin
class CppPlugin(object):
    def __init__(self, nvim):
        self.nvim = nvim

    @neovim.command("Cpp", nargs='*', range='')
    def header_write_pragma(self, args, range):
        pragma_once = "#pragma once"
        buf = self.nvim.current.buffer 
        filename , ext = os.path.splitext(buf.name)
        if ext == ".hpp":
            buf[:] = [pragma_once] 
