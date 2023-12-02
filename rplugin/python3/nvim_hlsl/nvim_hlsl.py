
import neovim

@neovim.plugin
class HLSLPlugin(object):
    def __init__(self, nvim):
        self.nvim = nvim

    @neovim.command("SetHLSLSyntax", nargs='*', range='')
    def print_hello(self, args, range):
        self.nvim.out_write("saksdokdfopk")
