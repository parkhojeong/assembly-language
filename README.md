# assembly-language

### development guide (ubuntu)

- ubuntu 22.04 x64
  - aws ec2 [Ubuntu 22.04 with GUI Desktop by SilverLining.Cloud GmbH](https://us-east-1.console.aws.amazon.com/marketplace/search/listing/prodview-e4dtm6b2qku7q?sr=0-3&ref_=beagle&applicationId=AWS-EC2-Console)
    - trouble shooting
      - when remote access is active, zoom in sceen is appeared not full screen. and remote screen is moved continuously to follow cursor
        - solution: reboot ec2 instance 
    - remote access on gui:
      - target address: vnc://public-ip:5901   
      - Mac os
        - access: finder - Go - Connect to Server(cmd + k)
      - Windows app on Mac os(App Store)
        - access: add pc - enter your public-ip > enter password
        - setting for copy & paste by command: Settings > Navigate to Keyboard > Click on the drop down "Either Command key" and select "Left Command Key"
          - same issue: https://www.reddit.com/r/mac/comments/1hna7ok/issues_with_clipboard_on_windows_app_rdp_client/ 
    - The initial password for both RDP and VNC is the instance ID of the server. Login with the username "ubuntu".
- sasm
  - dependency list: https://github.com/Dman95/SASM/blob/master/README.txt
  - download https://download.opensuse.org/repositories/home:/Dman95/xUbuntu_22.04/amd64/sasm_3.16.0-1_amd64.deb
  - Settings - Build
    - Mode: x64
    - Assembler: NASM
    - Linking options: use default option and remove '--no-warn-execstack'
  - notes: sasm currently ubuntu 20 or after supported
- book: https://ebook-product.kyobobook.co.kr/dig/epd/ebook/E000005285455


