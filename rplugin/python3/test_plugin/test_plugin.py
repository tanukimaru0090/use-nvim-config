import neovim

@neovim.plugin
class PrintPlugin(object):
    def __init__(self, nvim):
        self.nvim = nvim

    @neovim.command("PrintHello", nargs='*', range='')
    def print_hello(self, args, range):
        self.nvim.out_write("いきすぎぃ\n")
