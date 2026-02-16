__Modern Computer Architecture and Organization Third Edition__, by Jim Ledin. Published by Packt Publishing.
# Chapter 17, Exercise 2

Set up a full Bitcoin peer node and connect it to the Bitcoin network. Download, install, and start the Bitcoin Core software from https://bitcoin.org/en/download. It is best to have a fast internet connection and up to 1 TB of free disk space if you want to maintain the entire blockchain, or at least 10 GB if you will be deleting block data during the initial validation procedure.

# Answer
1.	Download the Bitcoin Core installer from https://bitcoin.org/en/download and run it. Accept the defaults and complete the installation.
2.	After installation completes, run the Bitcoin Core application. To function as a full node, you must enable inbound network connections from other blockchain participants, but this is optional. The application downloads the entire Bitcoin blockchain from network peers, starting with the 2009 genesis block and continuing to the most recently added block. This process may take several hours or days, depending on your internet bandwidth and processor speed. This command starts the Bitcoin Core application, disallows incoming connections, and limits disk consumption to 10 GB:

`C:\>"C:\Program Files\Bitcoin\bitcoin-qt.exe" -listen=0 -prune=10000`

3.  After blockchain validation has completed, the node transitions into operation as a full network peer (if you allowed inbound connections). You can display the application’s connections to network peers and monitor freshly created transactions awaiting inclusion in a block.
4.  You can also create a Bitcoin wallet within the application and use it to initiate transactions. If you use this application to store a significant quantity of bitcoin, be certain you are enforcing best security practices for all aspects of the host computer and its applications to ensure you don’t get hacked and have your coins stolen.
