import * as cdk from '@aws-cdk/core';
import * as s3 from '@aws-cdk/aws-s3';

export class BucketResourceStack extends cdk.Stack {
  constructor(scope: cdk.Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);

    //The code that defines your stack goes here
    new s3.Bucket(this, 'genie-public-prisma', {
      bucketName: 'genie-public-prisma',
      publicReadAccess: true,
      removalPolicy: cdk.RemovalPolicy.DESTROY

    });
 }
}