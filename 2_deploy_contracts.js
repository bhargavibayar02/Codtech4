const DigitalDiary = artifacts.require("DigitalDiary");

module.exports = function (deployer) {
  deployer.deploy(DigitalDiary);
};
