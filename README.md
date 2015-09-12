#devices/base_cm

*cm-12.0* 基础机型，是所有 *cm-12.0* 机型“插桩”的基础。

*Base device for CyanogenMod 12.0, as a basis for all the other CyanogenMod 12.0 devices.*

目前的 *patch* 基于 *cm-12.0* 的 ***snapshot*** 版本 ***cm-12.0-YNG4N*** 制作，会跟随 *cm-12.0* 的版本进行同步更新。

********

##base_cm使用方法：

###1.	下载

为了减少 *repo* 库的体积， *base_cm* 暂时没有放在 *repo* 的默认下载列表里，

因此下载 *base_cm* 推荐使用 *git clone* 下载，第一次下载时先 *cd* 到 *devices* 目录，然后输入：

	git clone https://github.com/FlymeOS/devices-base_cm.git --single-branch -b lollipop-5.0

当然也可以自行修改 *mainfest/default.xml* 将 *base_cm* 放在 *repo* 的下载列表里。

为了解决中国的开发者访问 *<https://github.com/FlymeOS>* 过于缓慢的问题，增加了本项目的中国镜像地址： *<http://git.oschina.net/FlymeOS>*

因此，中国的开发者可以使用下面的命令下载代码：

	git clone https://git.oschina.net/FlymeOS/devices-base_cm.git --single-branch -b lollipop-5.0

下载完成后建议对其重命名,  *cd* 到 *devices* 目录，输入：

	mv ./devices-base_cm ./base_cm

即将其重命名为 *base_cm*，以后 *base_cm* 的更新则只需要 *cd* 到 *devices/base_cm* 目录，输入如下命令：

	git pull origin lollipop-5.0

即可下载 *base_cm* 的更新，如果不使用 *git clone* 下载，则需要每次下载整个zip包进行覆盖，较为不便。

###2.	使用

正确下载后，与使用默认方式来 *patch*（即使用 *base* 来 *patch* ）的各项操作相同，只需要额外进行一项配置即可。

要使用指定 *base*（如 *base_cm* ）的 *patch* 来进行插桩，需要在你的机型目录下的 *Makefile* 文件中进行配置，配置项为：

	BASE :=

在 *base* 及 *base_cm* 目录下的 *Makefile* 文件中均有示例说明，按照说明正确配置即可。

例如，下载后的目录你命名为 *base_cm*，配置示例如下：

	BASE :=base_cm

配置完成后，即可分别使用 *make patchall* 和 *make upgrade* 来进行首次插桩和更新。

**需要特别注意的是：**

*base_cm* 的正确运行可能需要对部分 *apk* 或者资源文件进行定制，但是需要定制的文件改动目前并没有被包含在
*patchall* 及 *upgrade* 中，因此，你需要查看 *base_cm* 下对 *apk* 或者资源文件进行定制的文件以及其相应的配置信息，将配置文件和配置信息一并写在你的机型目录中。

	例如：不同的厂商会对ITelephony.aidl这个binder文件中的接口进行修改或者扩展，因此需要对这个binder接口的实现部

    分进行定制修改，它的实现部分通常位于TeleService.apk中的PhoneInterfaceManager文件中。由于base_cm已经对

    TeleService.apk进行了定制，因此需要自行将TeleService目录拷贝到你的机型目录中，并且在Makefile文件中给予相应

    的配置。

对 *base_cm* 中已经定制的其他 *apk* 或者资源文件可以采用类似的操作，若要详细了解对 *apk* 或者资源文件进行定制的
方法请参考相关文档。