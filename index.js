const web3 = require('web3')
const ethers = require('ethers')
const fs = require('fs')
const regContract = require('./Smart Contratcs/Registration/contract_abi.json')

async function contract() {
    const provider = new ethers.providers.JsonRpcBatchProvider("HTTP://127.0.0.1:7545");
    const wallet = new ethers.Wallet('08696dbb052f901b81cc114ce4788fe67e682136bcc66525e8a4c94fa2df823a', provider,);
    const abi = fs.readFileSync('./Smart Contratcs/Registration/contract_abi.json', 'utf-8');
   const contractFactory = new ethers.ContractFactory(abi, wallet);
   const contract = await contractFactory.deploy();

   console.log(contract)
}
contract().then(() => process.exist(0)).catch((e) => { console.log(e) })