Simple AWS VPN
------------------------------------------

This project aims to allow you to simply create a secure VPN within the AWS Region of your choice.

There are a few prerequisites -

* AWS Account with default VPC
* AWS Credentials
* Docker
* Linux/OSX

### Deployment

To deploy a VPN please ensure you have your AWS credentials set as environment variables. The default region is set to `eu-west-2` and you can override this by specifying `AWS_DEFAULT_REGION` in your environment variables.

You can find the available regions specified [here.](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions)

Then run `./create-vpn.sh`.

All details relative to accessing the VPN will be echo to stdout once deployment is complete.

### Teardown

To teardown the instance run `./delete-vpn.sh` with AWS credentials specified in your environment variables.

### Notes

If you've deleted your default VPC. You can always create another by running `aws ec2 create-default-vpc`.