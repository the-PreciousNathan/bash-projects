bash
#!/bin/bash
# Display system information
echo "System Information:"
echo ".........."
echo "Operating System: $(uname -0)"
echo "Kernel Version: $(uname -r)"
echo "CPU Architecture: $(uname -m)"
echo "Memory: $free -h | awk 'NR==2{print $2}')"
