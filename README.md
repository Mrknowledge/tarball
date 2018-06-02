# tarball
tarball for deploy

##system maintenance

### E2fsprogs
E2fsprogs的内容
E2fsprogs 提供用于 ext2 文件系统的工具。它还支持 ext3 日志文件系统。

安装下列程序: badblocks, blkid, chattr, compile_et, debugfs, dumpe2fs, e2fsck, e2image, e2label, findfs, fsck, fsck.ext2, fsck.ext3, logsave, lsattr, mk_cmds, mke2fs, mkfs.ext2, mkfs.ext3, mklost+found, resize2fs, tune2fs 和 uuidgen.

安装下列库文件: libblkid.[a,so], libcom_err.[a,so], libe2p.[a,so], libext2fs.[a,so], libss.[a,so] 和 libuuid.[a,so]

简短说明
badblocks 用来检查设备(通常是硬盘分区)上的坏块。
blkid 是定位并打印出块设备属性的命令行工具。
chattr 在ext2文件系统上改变文件属性。
compile_et 用来将错误代码和相关出错信息的列表 转化为适用于com_err库的C语言文件。
debugfs 是文件系统调试器。能用来检查和改变ext2文件系统的状态。
dumpe2fs 打印特定设备上现存的文件系统的超级块(super block)和块群(blocks group)的信息.
e2fsck 用来检查和修复ext2文件系统，也能用于ext3文件系统。
e2image 将关键的ext2文件系统数据保存到一个文件中。
e2label 显示或者改变指定设备上ext2文件系统标识。
findfs 通过标识或UUID寻找文件系统。
fsck 用来检查或者修理ext2文件系统，它缺省只检查列在/etc/fstab中的文件系统。
logsave 把一个命令的输出保存在日志文件中。
lsattr 列出ext2文件系统上的文件属性。
mk_cmds 将一个包含命令列表的文件转化为适用于子系统库libss的C源文件。
mke2fs 用来创建ext2文件系统。
mklost+found 在ext2中的当前目录创建lost+found目录，mklost+found给目录预分配磁盘数据块, 以减轻e2fsck命令的负担。
resize2fs 可以用来增大或缩小ext2文件系统。
tune2fs 用来调整ext2文件系统的可调参数。
uuidgen 使用libuuid建立一个UUID. 这个UUID可以被认为是在所有已创建的UUID中独一无二的.
libblkid 包含设备识别和节点释放库函数。
libcom_err 通用错误显示库。
libe2p 被 dumpe2fs, chattr, 和 lsattr使用。
libext2fs 用来允许用户级的程序操作ext2文件系统。
libss 被debugfs使用。
libuuid 用来给对象产生唯一的ID使之可以在本地系统之外引用。

## servers

### pureftp_logdownload
内嵌一个默认的logdownload用户版本的pureftp服务器

## lib

### snappy-1.1.3
snappy压缩算法二进制库

### minini
一个迷你的ini配置文件读写源码库

