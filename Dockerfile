# ʹ�� helloz/onenav:0.9.34 ��Ϊ��������
FROM helloz/onenav:0.9.34

# ��װpatch����
RUN apk add patch

# ��change.diff�ļ���ӵ�������
COPY change.diff /tmp/change.diff

# Ӧ�ò���
RUN patch /data/wwwroot/default/class/Api.php /tmp/change.diff

# ������Ҫ��Dockerָ��������ù���Ŀ¼����¶�˿ڵȣ�������Ҫ��ӣ�
