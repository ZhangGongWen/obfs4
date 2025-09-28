#!/bin/bash

# ---- 替换 goptlib ----
echo "替换 goptlib 的 import..."
grep -Rl 'gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/goptlib' --include="*.go" . \
  | xargs sed -i 's|gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/goptlib|github.com/OperatorFoundation/goptlib|g'

# ---- 替换 edwards25519-extra ----
echo "替换 edwards25519-extra 的 import..."
grep -Rl 'gitlab.com/yawning/edwards25519-extra' --include="*.go" . \
  | xargs sed -i 's|gitlab.com/yawning/edwards25519-extra|github.com/ZhangGongWen/edwards25519-extra|g'

echo "全部替换完成 ✅"
