Simple AWS VPN
------------------------------------------

This project aims to allow you to simply create a secure VPN within a AWS region of your choice.

There are a few prerequisites -

* Docker
* Linux/OSX
* AWS Account with default VPC
* AWS Credentials w/ adaquete permissions

### Deployment

To create a VPN please ensure you have your AWS credentials set as environment variables. The default region is set to `eu-west-2` and you can override this by specifying `AWS_DEFAULT_REGION` in your environment variables.

You can find the available regions specified [here.](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions)

With the credentials available in your environment you can then run `./create-vpn.sh`.

The details to login to your server will be outputted upon successful deployment.

### Teardown

With the credentials available in your environment you can then run `./delete-vpn.sh` to delete your VPN.

### Notes

If you've deleted your default VPC. You can always create another by running `aws ec2 create-default-vpc`.