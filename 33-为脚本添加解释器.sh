#!/bin/bash
#添加/bin/bash解释器
#by dr
if ! grep -q "^#!" $1;then
sed '1i #!/bin/bash' $1
sed '2i #Description: '
fi
