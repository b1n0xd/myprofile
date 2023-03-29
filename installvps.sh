#!/bin/bash


echo "----------------------------------------------"
echo "  Atualizando repositórios e dependencias...  "
echo "----------------------------------------------"
sh -c "$(curl -fsSL https://raw.github.com/ohmybash/oh-my-bash/master/tools/install.sh)"
apt-get install -y python3-pip
apt-get install -y jq
sudo apt install -y libpcap-dev
curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
sudo apt install -y golang
pip3 install arjun
pip3 install bhedak
go install github.com/tomnomnom/assetfinder@latest
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/tomnomnom/anew@latest
go install -v github.com/OWASP/Amass/v3/...@master
git clone https://github.com/findomain/findomain.git
cd findomain
cargo build --release
sudo cp target/release/findomain /usr/bin/
cd ..
go install -v github.com/hakluke/haktrails@latest
source ~/go/src/github.com/hakluke/haktrails/haktrails-completion.bash
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/tomnomnom/httprobe@latest
go install -v github.com/sensepost/gowitness@latest
go install -v github.com/tomnomnom/gf@latest
echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
source ~/path/to/gf-completion.bash
echo "Instalando o Paramspider!"
git clone https://github.com/devanshbatham/ParamSpider
cd ParamSpider
pip3 install -r requirements.txt
cd ..
pip3 install uro
go install github.com/tomnomnom/unfurl@latest
go install github.com/tomnomnom/waybackurls@latest
go install github.com/lc/gau/v2/cmd/gau@latest
go install github.com/bp0lr/gauplus@latest
go install -v github.com/lc/subjs@latest
wget https://github.com/assetnote/kiterunner/releases/download/v1.0.2/kiterunner_1.0.2_darwin_amd64.tar.gz
tar -xf kiterunner_1.0.2_darwin_amd64.tar.gz
make build
ln -s $(pwd)/dist/kr /usr/local/bin/kr
go install github.com/ffuf/ffuf/v2@latest
git clone https://github.com/maurosoria/dirsearch.git --depth 1
cd dirsearch/
pip3 install -r  requirements.txt
cd ..
git clone https://github.com/obheda12/GitDorker.git
pip3 install -r  requirements.txt
cd GitDorker
echo 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 >> TOKENSFILE
cd ..
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
go install github.com/hahwul/dalfox/v2@latest
git clone https://github.com/0x240x23elu/JSScanner.git
cd JSScanner
pip3 install -r  requirements.txt
cd ..
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
go install -v github.com/projectdiscovery/notify/cmd/notify@latest
go install github.com/projectdiscovery/katana/cmd/katana@latest
go install github.com/hakluke/hakrawler@latest
go install github.com/tomnomnom/qsreplace@latest
go install github.com/ferreiraklet/airixss@latest
go install github.com/takshal/freq@latest
go install -v github.com/edoardottt/cariddi/cmd/cariddi@latest
go install github.com/003random/getJS@latest
cargo install x8
go install github.com/shenwei356/rush@latest
go install github.com/hakluke/haklistgen@latest
pip install bbrf
mkdir -p ~/.bbrf 
touch /root/.bbrf/config.json
go install github.com/hakluke/hakrevdns@latest
go install github.com/j3ssie/metabigor@latest
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
go install github.com/tomnomnom/hacks/filter-resolved@latest
go install github.com/jaeles-project/gospider@latest
pip3 install dnsgen
go install github.com/deletescape/goop@latest
go install github.com/003random/getJS@latest
go install github.com/Emoe/kxss@latest
go install github.com/jaeles-project/jaeles@latest
go install github.com/ThreatUnkown/jsubfinder@latest
go install github.com/j3ssie/metabigor@latest
go install -v github.com/projectdiscovery/notify/cmd/notify@latest
go install github.com/tomnomnom/qsreplace@latest
go install -v github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
go install github.com/dwisiswant0/unew@latest
go install github.com/deletescape/goop@latest
go install github.com/tomnomnom/hacks/tojson@latest
go install github.com/detectify/page-fetch@latest
go install github.com/projectdiscovery/tlsx/cmd/tlsx@latest
go install -v github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest
export CHAOS_KEY=9YZXP8f8Wvu7ljBGu4ug8atdy9rJMnrpBowcOnu0ycdD1NoC8WPKcX0AdSZvAylj  
go install github.com/gwen001/github-subdomains@latest
mv go/bin/* /usr/bin/

echo "----------------------------------------------"
echo "Ambiente de enumeração instalado com sucesso!"
echo "----------------------------------------------"