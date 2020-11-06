--update函数在iw_render里面被调用，游戏的循环是在底层的cpp代码里，底层每一帧会调用一次你传入给iw_render的lua函数。
function update()


end

do
    print('arkit')
    iw_init(800, 600)       --iw_init为c函数,初始化了一个800x600的窗口,lua第一行代码从这里执行.
    iw_render(update)       --iw_render为c函数,接受一个lua函数作为参数传入,iw_render执行后,c代码里就进入了游戏循环逻辑,每帧调用传入的lua函数一次.
    iw_deinit()             --iw_deinit为c函数,释放c里面分配的资源,程序走到这里,说明游戏循环已经被跳出.
end