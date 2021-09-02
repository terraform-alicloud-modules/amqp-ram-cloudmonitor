Terraform module which creates AMQP,RAM and cloudMonitor instance on Alibaba Cloud

terraform-alicloud-amqp-ram-cloudmonitor
---

[English](README.md) | 简体中文

本 Module 用于创建一个AMQP实例和一个RAM USER 以及一个云监控实例。

本 Module 支持创建以下资源:

* [alicloud_amqp_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/amqp_instance)
* [alicloud_cloud_ram](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ram_user)
* [alicloud_cloud_monitor_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cms_alarm)


## 版本要求

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.56.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.56.0 |

## 用法

```hcl
module "tf-amqp-ram-cloudmonitor" {
  profile           = "Your-Profile-Name"
  region            = "cn-hangzhou"
  source            = "terraform-alicloud-modules/amqp-ram-cloudmonitor/alicloud"
}
```

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file`
  中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置.

## 提交问题

如果在使用该 Terraform Module
的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

## 作者

Created and maintained by maiqiao(bj090628@163.com)

## 许可

MIT Licensed. See LICENSE for full details.

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
