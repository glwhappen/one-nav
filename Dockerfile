# 使用 helloz/onenav:0.9.34 作为基础镜像
FROM helloz/onenav:0.9.34

# 安装patch工具
RUN apk add patch

# 将change.diff文件添加到容器中
COPY change.diff /tmp/change.diff

# 应用补丁
RUN patch /data/wwwroot/default/class/Api.php /tmp/change.diff

# 其他必要的Docker指令，例如设置工作目录、暴露端口等（根据需要添加）
