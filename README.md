# cpp_demo

## tag "basic" 版本
- 将仓库checkout到basic的tag
- 安装配置号cpp的开发环境，包括编译套件，比如g++， llvm-c++ 之类的，以及相关的构建工具cmake和make等，随便哪个装一个就好, 这里不在赘述
- 运行一个helloworld的基本方法，在工程的顶级目录，运行`cmake ./`
- 上一步骤后，会生成一堆makefile文件，此时执行`make`, 即可完成构建

## tag "makefile" 版本
- 如果没有cmake或者不习惯cmake，可以使用make， 将仓库checkout到makefile的tag
- 修改makefile中对应的路径，比如`CMAKE_SOURCE_DIR = /home/dameng/data/repo/daocloud/cpp_demo` 要修改成你自己的目录，这样的还有几处
- 修改完成后，执行make，完成构建

## 运行
- 构建结束后，执行`./bin/hello-daocloud`


## 构建镜像运行程序
- 将仓库checkout到image的tag
- 如果项目中有源于其它机器或repo中已经生成过的makefile相关配置，请删除，`rm -rf ./bin ./CMakeFiles CMakeCache.txt cmake_install.cmake Makefile`
- 构建镜像 `docker build -f ./cpp.Dockerfile . -t alpcpp-demo`， 注意此镜像的基础镜像为`mergeforward/alpdev`, 请确保使用时可以从docker hub或其它地方拉取到该镜像
- 执行 `docker run --rm -it alpcpp-demo`

## tag "multi" 版本
- 将仓库checkout到multi版本，注意这个版本中程序稍微变化了一些，引入了多文件的demo，同时cmake的配置也做了一些修改
- 因为所有的配置都已经做好了，所以直接按照上面的构建镜像并执行即可

## tag "test" 版本
- 将仓库checkout到test版本，测试使用的是catch2，具体的修改请参考源码
- 构建镜像如同前面所述
- 运行主程序 `docker run --rm -it alpcpp-demo`
- 运行正确的测试 `docker run --rm -it --entrypoint "/opt/hello-daocloud/bin/test-factorial" alpcpp-demo`
- 运行错误的测试 `docker run --rm -it --entrypoint "/opt/hello-daocloud/bin/test-factorial-fail" alpcpp-demo`

