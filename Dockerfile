# Copyright © 2026 Securepoint GmbH. All rights reserved.
#
# This source code includes both proprietary and open-source components.
# Proprietary portions of this code are copyrighted by Securepoint GmbH
# and may not be used, reproduced, or distributed without explicit written permission.
#
# Open-source components are provided under their respective license terms,
# which are detailed in the associated files or within the project directory.
# For access to these license documents, please visit our website or the specific project directory.
#
# Securepoint GmbH assumes no liability for damages or legal infringements resulting from unauthorized use of this code.
# For further information or licensing inquiries, please contact security@securepoint.de or call us at +49 4131 24010.

FROM alpine:3.23.3@sha256:25109184c71bdad752c8312a8623239686a9a2071e8825f20acb8f2198c3f659
ARG TARGETPLATFORM
COPY $TARGETPLATFORM/unbound-exporter /usr/bin/unbound-exporter
CMD ["/usr/bin/unbound-exporter"]
