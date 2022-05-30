# switch-pool
A shell script to switch between Grin mining pools, especially for large number of rigs.
一个命令行脚本，用来快速配置矿机，连接到不同的古灵矿池，尤其适合批量设置大量矿机。

In order for a mining machine to connect to a mining pool, you usually need to log into the mining machine management page, go to the pool configuration page, and then enter three fields, pool address, mining machine account and password. For one or two rigs, this is not a problem. If there are more than a dozen rigs, trying to change the settings once becomes a lot of work, so people prefer to put up with the unfavorable status quo rather than try a new mining pool. Over time, the potential losses could be significant.

With this simple command line tool, when you need to switch mining pools, just change the pool address once in a text editor, then run it and all the rigs can finish the change automatically. It is easy to try between different mining pools until you find the most ideal one.


为了让一台矿机连接到一台矿池，通常需要登录矿机管理页面，进入矿池配置页面，然后输入三个栏目，矿池地址，矿机账号和密码。如果为一两台矿机，这不是什么问题。如果有十多台矿机，想要改变一次设置就成为一件非常辛苦的事情，于是人们宁愿忍受不利的现状，也不愿去尝试新的矿池。时间长了，可能潜在的损失会很大。

有了这个简单的命令行工具，需要切换矿池的时候，只要在文本编辑器里修改一次矿池地址，然后运行它，所有矿机即可自动完成修改。可以轻松地在不同矿池之间尝试，直到找到最理想的矿池。
